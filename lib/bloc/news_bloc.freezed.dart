// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
    required TResult Function(String articleId) markRead,
    required TResult Function() markAllRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
    TResult? Function(String articleId)? markRead,
    TResult? Function()? markAllRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    TResult Function(String articleId)? markRead,
    TResult Function()? markAllRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
    required TResult Function(_MarkRead value) markRead,
    required TResult Function(_MarkAllRead value) markAllRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchArticles value)? fetchArticles,
    TResult? Function(_MarkRead value)? markRead,
    TResult? Function(_MarkAllRead value)? markAllRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
    TResult Function(_MarkRead value)? markRead,
    TResult Function(_MarkAllRead value)? markAllRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchArticlesImplCopyWith<$Res> {
  factory _$$FetchArticlesImplCopyWith(
          _$FetchArticlesImpl value, $Res Function(_$FetchArticlesImpl) then) =
      __$$FetchArticlesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchArticlesImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$FetchArticlesImpl>
    implements _$$FetchArticlesImplCopyWith<$Res> {
  __$$FetchArticlesImplCopyWithImpl(
      _$FetchArticlesImpl _value, $Res Function(_$FetchArticlesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchArticlesImpl implements _FetchArticles {
  _$FetchArticlesImpl();

  @override
  String toString() {
    return 'NewsEvent.fetchArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchArticlesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
    required TResult Function(String articleId) markRead,
    required TResult Function() markAllRead,
  }) {
    return fetchArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
    TResult? Function(String articleId)? markRead,
    TResult? Function()? markAllRead,
  }) {
    return fetchArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    TResult Function(String articleId)? markRead,
    TResult Function()? markAllRead,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
    required TResult Function(_MarkRead value) markRead,
    required TResult Function(_MarkAllRead value) markAllRead,
  }) {
    return fetchArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchArticles value)? fetchArticles,
    TResult? Function(_MarkRead value)? markRead,
    TResult? Function(_MarkAllRead value)? markAllRead,
  }) {
    return fetchArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
    TResult Function(_MarkRead value)? markRead,
    TResult Function(_MarkAllRead value)? markAllRead,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles(this);
    }
    return orElse();
  }
}

abstract class _FetchArticles implements NewsEvent {
  factory _FetchArticles() = _$FetchArticlesImpl;
}

/// @nodoc
abstract class _$$MarkReadImplCopyWith<$Res> {
  factory _$$MarkReadImplCopyWith(
          _$MarkReadImpl value, $Res Function(_$MarkReadImpl) then) =
      __$$MarkReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$MarkReadImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$MarkReadImpl>
    implements _$$MarkReadImplCopyWith<$Res> {
  __$$MarkReadImplCopyWithImpl(
      _$MarkReadImpl _value, $Res Function(_$MarkReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$MarkReadImpl(
      null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkReadImpl implements _MarkRead {
  _$MarkReadImpl(this.articleId);

  @override
  final String articleId;

  @override
  String toString() {
    return 'NewsEvent.markRead(articleId: $articleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkReadImpl &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkReadImplCopyWith<_$MarkReadImpl> get copyWith =>
      __$$MarkReadImplCopyWithImpl<_$MarkReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
    required TResult Function(String articleId) markRead,
    required TResult Function() markAllRead,
  }) {
    return markRead(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
    TResult? Function(String articleId)? markRead,
    TResult? Function()? markAllRead,
  }) {
    return markRead?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    TResult Function(String articleId)? markRead,
    TResult Function()? markAllRead,
    required TResult orElse(),
  }) {
    if (markRead != null) {
      return markRead(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
    required TResult Function(_MarkRead value) markRead,
    required TResult Function(_MarkAllRead value) markAllRead,
  }) {
    return markRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchArticles value)? fetchArticles,
    TResult? Function(_MarkRead value)? markRead,
    TResult? Function(_MarkAllRead value)? markAllRead,
  }) {
    return markRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
    TResult Function(_MarkRead value)? markRead,
    TResult Function(_MarkAllRead value)? markAllRead,
    required TResult orElse(),
  }) {
    if (markRead != null) {
      return markRead(this);
    }
    return orElse();
  }
}

abstract class _MarkRead implements NewsEvent {
  factory _MarkRead(final String articleId) = _$MarkReadImpl;

  String get articleId;
  @JsonKey(ignore: true)
  _$$MarkReadImplCopyWith<_$MarkReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAllReadImplCopyWith<$Res> {
  factory _$$MarkAllReadImplCopyWith(
          _$MarkAllReadImpl value, $Res Function(_$MarkAllReadImpl) then) =
      __$$MarkAllReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllReadImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$MarkAllReadImpl>
    implements _$$MarkAllReadImplCopyWith<$Res> {
  __$$MarkAllReadImplCopyWithImpl(
      _$MarkAllReadImpl _value, $Res Function(_$MarkAllReadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAllReadImpl implements _MarkAllRead {
  _$MarkAllReadImpl();

  @override
  String toString() {
    return 'NewsEvent.markAllRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAllReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
    required TResult Function(String articleId) markRead,
    required TResult Function() markAllRead,
  }) {
    return markAllRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
    TResult? Function(String articleId)? markRead,
    TResult? Function()? markAllRead,
  }) {
    return markAllRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    TResult Function(String articleId)? markRead,
    TResult Function()? markAllRead,
    required TResult orElse(),
  }) {
    if (markAllRead != null) {
      return markAllRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
    required TResult Function(_MarkRead value) markRead,
    required TResult Function(_MarkAllRead value) markAllRead,
  }) {
    return markAllRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchArticles value)? fetchArticles,
    TResult? Function(_MarkRead value)? markRead,
    TResult? Function(_MarkAllRead value)? markAllRead,
  }) {
    return markAllRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
    TResult Function(_MarkRead value)? markRead,
    TResult Function(_MarkAllRead value)? markAllRead,
    required TResult orElse(),
  }) {
    if (markAllRead != null) {
      return markAllRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAllRead implements NewsEvent {
  factory _MarkAllRead() = _$MarkAllReadImpl;
}
