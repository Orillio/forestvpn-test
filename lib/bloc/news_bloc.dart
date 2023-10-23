import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:forestvpn_test/di/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../repositories/news/repository.dart';

part 'news_bloc.freezed.dart';

@freezed
class NewsState with _$NewsState {
  factory NewsState.initial() = _Initial;

  factory NewsState.fetched({
    required List<Article> featuredArticles,
    required List<Article> latestArticles,
  }) = _Fetched;
}

@freezed
class NewsEvent with _$NewsEvent {
  factory NewsEvent.fetchArticles() = _FetchArticles;
  factory NewsEvent.markRead(String articleId) = _MarkRead;
  factory NewsEvent.markAllRead() = _MarkAllRead;
}

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState.initial()) {
    on<_FetchArticles>(_fetchArticles);
    on<_MarkRead>(_markRead);
    on<_MarkAllRead>(_markAllRead);

    _newsRepository = getIt.get<AbstractNewsRepository>();
  }

  late final AbstractNewsRepository _newsRepository;

  FutureOr<void> _fetchArticles(_FetchArticles event, Emitter emit) async {
    emit(NewsState.fetched(
      featuredArticles: await _newsRepository.getFeaturedArticles(),
      latestArticles: await _newsRepository.getLatestArticles(),
    ));
  }

  FutureOr<void> _markRead(_MarkRead event, Emitter emit) {
    _Fetched fetchedState = state as _Fetched;

    int index = fetchedState.latestArticles.indexWhere(
      (e) => e.id == event.articleId,
    );

    Article article = fetchedState.latestArticles[index];

    emit(
      fetchedState.copyWith(
        featuredArticles: fetchedState.featuredArticles,
        latestArticles: List.of(fetchedState.latestArticles)
          ..removeAt(index)
          ..insert(
            index,
            article.copyWith(readed: true),
          ),
      ),
    );
  }

  FutureOr<void> _markAllRead(_MarkAllRead event, Emitter emit) {
    _Fetched fetchedState = state as _Fetched;

    emit(
      fetchedState.copyWith(
        featuredArticles: fetchedState.featuredArticles,
        latestArticles:
            fetchedState.latestArticles.map((e) => e.copyWith(readed: true)).toList(),
      ),
    );
  }
}
