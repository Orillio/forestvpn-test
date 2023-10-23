import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:forestvpn_test/di/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../repositories/news/repository.dart';

part 'news_bloc.freezed.dart';

class NewsState {
  final List<Article> featuredArticles;
  final List<Article> latestArticles;

  NewsState({
    required this.featuredArticles,
    required this.latestArticles,
  });
}

@freezed
class NewsEvent with _$NewsEvent {
  factory NewsEvent.fetchArticles() = _FetchArticles;
  factory NewsEvent.markRead(String articleId) = _MarkRead;
  factory NewsEvent.markAllRead() = _MarkAllRead;
}

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc()
      : super(NewsState(
          featuredArticles: [],
          latestArticles: [],
        )) {
    on<_FetchArticles>(_fetchArticles);
    on<_MarkRead>(_markRead);
    on<_MarkAllRead>(_markAllRead);

    _newsRepository = getIt.get<AbstractNewsRepository>();
  }

  late final AbstractNewsRepository _newsRepository;

  FutureOr<void> _fetchArticles(_FetchArticles event, Emitter emit) async {
    emit(NewsState(
      featuredArticles: await _newsRepository.getFeaturedArticles(),
      latestArticles: await _newsRepository.getLatestArticles(),
    ));
  }

  FutureOr<void> _markRead(_MarkRead event, Emitter emit) {
    state.latestArticles.firstWhere(
      (e) => e.id == event.articleId,
    );
    emit(state);
  }

  FutureOr<void> _markAllRead(_MarkAllRead event, Emitter emit) {}
}
