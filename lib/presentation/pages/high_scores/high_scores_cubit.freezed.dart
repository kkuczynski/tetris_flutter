// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'high_scores_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HighScoresStateTearOff {
  const _$HighScoresStateTearOff();

  HighScoresStateIdle idle() {
    return const HighScoresStateIdle();
  }

  HighScoresStateLoaded loaded(List<Score> scoreList) {
    return HighScoresStateLoaded(
      scoreList,
    );
  }
}

/// @nodoc
const $HighScoresState = _$HighScoresStateTearOff();

/// @nodoc
mixin _$HighScoresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Score> scoreList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HighScoresStateIdle value) idle,
    required TResult Function(HighScoresStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighScoresStateCopyWith<$Res> {
  factory $HighScoresStateCopyWith(
          HighScoresState value, $Res Function(HighScoresState) then) =
      _$HighScoresStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HighScoresStateCopyWithImpl<$Res>
    implements $HighScoresStateCopyWith<$Res> {
  _$HighScoresStateCopyWithImpl(this._value, this._then);

  final HighScoresState _value;
  // ignore: unused_field
  final $Res Function(HighScoresState) _then;
}

/// @nodoc
abstract class $HighScoresStateIdleCopyWith<$Res> {
  factory $HighScoresStateIdleCopyWith(
          HighScoresStateIdle value, $Res Function(HighScoresStateIdle) then) =
      _$HighScoresStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$HighScoresStateIdleCopyWithImpl<$Res>
    extends _$HighScoresStateCopyWithImpl<$Res>
    implements $HighScoresStateIdleCopyWith<$Res> {
  _$HighScoresStateIdleCopyWithImpl(
      HighScoresStateIdle _value, $Res Function(HighScoresStateIdle) _then)
      : super(_value, (v) => _then(v as HighScoresStateIdle));

  @override
  HighScoresStateIdle get _value => super._value as HighScoresStateIdle;
}

/// @nodoc

class _$HighScoresStateIdle implements HighScoresStateIdle {
  const _$HighScoresStateIdle();

  @override
  String toString() {
    return 'HighScoresState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HighScoresStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Score> scoreList) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HighScoresStateIdle value) idle,
    required TResult Function(HighScoresStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class HighScoresStateIdle implements HighScoresState {
  const factory HighScoresStateIdle() = _$HighScoresStateIdle;
}

/// @nodoc
abstract class $HighScoresStateLoadedCopyWith<$Res> {
  factory $HighScoresStateLoadedCopyWith(HighScoresStateLoaded value,
          $Res Function(HighScoresStateLoaded) then) =
      _$HighScoresStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Score> scoreList});
}

/// @nodoc
class _$HighScoresStateLoadedCopyWithImpl<$Res>
    extends _$HighScoresStateCopyWithImpl<$Res>
    implements $HighScoresStateLoadedCopyWith<$Res> {
  _$HighScoresStateLoadedCopyWithImpl(
      HighScoresStateLoaded _value, $Res Function(HighScoresStateLoaded) _then)
      : super(_value, (v) => _then(v as HighScoresStateLoaded));

  @override
  HighScoresStateLoaded get _value => super._value as HighScoresStateLoaded;

  @override
  $Res call({
    Object? scoreList = freezed,
  }) {
    return _then(HighScoresStateLoaded(
      scoreList == freezed
          ? _value.scoreList
          : scoreList // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ));
  }
}

/// @nodoc

class _$HighScoresStateLoaded implements HighScoresStateLoaded {
  const _$HighScoresStateLoaded(this.scoreList);

  @override
  final List<Score> scoreList;

  @override
  String toString() {
    return 'HighScoresState.loaded(scoreList: $scoreList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HighScoresStateLoaded &&
            (identical(other.scoreList, scoreList) ||
                const DeepCollectionEquality()
                    .equals(other.scoreList, scoreList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scoreList);

  @JsonKey(ignore: true)
  @override
  $HighScoresStateLoadedCopyWith<HighScoresStateLoaded> get copyWith =>
      _$HighScoresStateLoadedCopyWithImpl<HighScoresStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Score> scoreList) loaded,
  }) {
    return loaded(scoreList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
  }) {
    return loaded?.call(scoreList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Score> scoreList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(scoreList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HighScoresStateIdle value) idle,
    required TResult Function(HighScoresStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HighScoresStateIdle value)? idle,
    TResult Function(HighScoresStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HighScoresStateLoaded implements HighScoresState {
  const factory HighScoresStateLoaded(List<Score> scoreList) =
      _$HighScoresStateLoaded;

  List<Score> get scoreList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighScoresStateLoadedCopyWith<HighScoresStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
