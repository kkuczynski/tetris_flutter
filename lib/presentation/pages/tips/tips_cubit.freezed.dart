// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TipsStateTearOff {
  const _$TipsStateTearOff();

  TipsStateIdle idle() {
    return const TipsStateIdle();
  }

  TipsStateLoaded loaded() {
    return const TipsStateLoaded();
  }
}

/// @nodoc
const $TipsState = _$TipsStateTearOff();

/// @nodoc
mixin _$TipsState {
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
    required TResult Function(TipsStateIdle value) idle,
    required TResult Function(TipsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsStateCopyWith<$Res> {
  factory $TipsStateCopyWith(TipsState value, $Res Function(TipsState) then) =
      _$TipsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TipsStateCopyWithImpl<$Res> implements $TipsStateCopyWith<$Res> {
  _$TipsStateCopyWithImpl(this._value, this._then);

  final TipsState _value;
  // ignore: unused_field
  final $Res Function(TipsState) _then;
}

/// @nodoc
abstract class $TipsStateIdleCopyWith<$Res> {
  factory $TipsStateIdleCopyWith(
          TipsStateIdle value, $Res Function(TipsStateIdle) then) =
      _$TipsStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$TipsStateIdleCopyWithImpl<$Res> extends _$TipsStateCopyWithImpl<$Res>
    implements $TipsStateIdleCopyWith<$Res> {
  _$TipsStateIdleCopyWithImpl(
      TipsStateIdle _value, $Res Function(TipsStateIdle) _then)
      : super(_value, (v) => _then(v as TipsStateIdle));

  @override
  TipsStateIdle get _value => super._value as TipsStateIdle;
}

/// @nodoc

class _$TipsStateIdle implements TipsStateIdle {
  const _$TipsStateIdle();

  @override
  String toString() {
    return 'TipsState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TipsStateIdle);
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
    required TResult Function(TipsStateIdle value) idle,
    required TResult Function(TipsStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class TipsStateIdle implements TipsState {
  const factory TipsStateIdle() = _$TipsStateIdle;
}

/// @nodoc
abstract class $TipsStateLoadedCopyWith<$Res> {
  factory $TipsStateLoadedCopyWith(
          TipsStateLoaded value, $Res Function(TipsStateLoaded) then) =
      _$TipsStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TipsStateLoadedCopyWithImpl<$Res> extends _$TipsStateCopyWithImpl<$Res>
    implements $TipsStateLoadedCopyWith<$Res> {
  _$TipsStateLoadedCopyWithImpl(
      TipsStateLoaded _value, $Res Function(TipsStateLoaded) _then)
      : super(_value, (v) => _then(v as TipsStateLoaded));

  @override
  TipsStateLoaded get _value => super._value as TipsStateLoaded;
}

/// @nodoc

class _$TipsStateLoaded implements TipsStateLoaded {
  const _$TipsStateLoaded();

  @override
  String toString() {
    return 'TipsState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TipsStateLoaded);
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
    required TResult Function(TipsStateIdle value) idle,
    required TResult Function(TipsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipsStateIdle value)? idle,
    TResult Function(TipsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TipsStateLoaded implements TipsState {
  const factory TipsStateLoaded() = _$TipsStateLoaded;
}
