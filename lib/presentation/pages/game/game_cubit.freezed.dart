// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  GameStateIdle idle() {
    return const GameStateIdle();
  }

  GameStateLoaded loaded() {
    return const GameStateLoaded();
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateIdle value) idle,
    required TResult Function(GameStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class $GameStateIdleCopyWith<$Res> {
  factory $GameStateIdleCopyWith(
          GameStateIdle value, $Res Function(GameStateIdle) then) =
      _$GameStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateIdleCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameStateIdleCopyWith<$Res> {
  _$GameStateIdleCopyWithImpl(
      GameStateIdle _value, $Res Function(GameStateIdle) _then)
      : super(_value, (v) => _then(v as GameStateIdle));

  @override
  GameStateIdle get _value => super._value as GameStateIdle;
}

/// @nodoc

class _$GameStateIdle implements GameStateIdle {
  const _$GameStateIdle();

  @override
  String toString() {
    return 'GameState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
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
    required TResult Function(GameStateIdle value) idle,
    required TResult Function(GameStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class GameStateIdle implements GameState {
  const factory GameStateIdle() = _$GameStateIdle;
}

/// @nodoc
abstract class $GameStateLoadedCopyWith<$Res> {
  factory $GameStateLoadedCopyWith(
          GameStateLoaded value, $Res Function(GameStateLoaded) then) =
      _$GameStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateLoadedCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameStateLoadedCopyWith<$Res> {
  _$GameStateLoadedCopyWithImpl(
      GameStateLoaded _value, $Res Function(GameStateLoaded) _then)
      : super(_value, (v) => _then(v as GameStateLoaded));

  @override
  GameStateLoaded get _value => super._value as GameStateLoaded;
}

/// @nodoc

class _$GameStateLoaded implements GameStateLoaded {
  const _$GameStateLoaded();

  @override
  String toString() {
    return 'GameState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateIdle value) idle,
    required TResult Function(GameStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateIdle value)? idle,
    TResult Function(GameStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GameStateLoaded implements GameState {
  const factory GameStateLoaded() = _$GameStateLoaded;
}
