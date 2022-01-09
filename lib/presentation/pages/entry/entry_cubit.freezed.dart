// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntryStateTearOff {
  const _$EntryStateTearOff();

  EntryStateIdle idle() {
    return const EntryStateIdle();
  }

  EntryStateLoaded loaded() {
    return const EntryStateLoaded();
  }
}

/// @nodoc
const $EntryState = _$EntryStateTearOff();

/// @nodoc
mixin _$EntryState {
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
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryStateCopyWith<$Res> {
  factory $EntryStateCopyWith(
          EntryState value, $Res Function(EntryState) then) =
      _$EntryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryStateCopyWithImpl<$Res> implements $EntryStateCopyWith<$Res> {
  _$EntryStateCopyWithImpl(this._value, this._then);

  final EntryState _value;
  // ignore: unused_field
  final $Res Function(EntryState) _then;
}

/// @nodoc
abstract class $EntryStateIdleCopyWith<$Res> {
  factory $EntryStateIdleCopyWith(
          EntryStateIdle value, $Res Function(EntryStateIdle) then) =
      _$EntryStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryStateIdleCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements $EntryStateIdleCopyWith<$Res> {
  _$EntryStateIdleCopyWithImpl(
      EntryStateIdle _value, $Res Function(EntryStateIdle) _then)
      : super(_value, (v) => _then(v as EntryStateIdle));

  @override
  EntryStateIdle get _value => super._value as EntryStateIdle;
}

/// @nodoc

class _$EntryStateIdle implements EntryStateIdle {
  const _$EntryStateIdle();

  @override
  String toString() {
    return 'EntryState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EntryStateIdle);
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
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class EntryStateIdle implements EntryState {
  const factory EntryStateIdle() = _$EntryStateIdle;
}

/// @nodoc
abstract class $EntryStateLoadedCopyWith<$Res> {
  factory $EntryStateLoadedCopyWith(
          EntryStateLoaded value, $Res Function(EntryStateLoaded) then) =
      _$EntryStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryStateLoadedCopyWithImpl<$Res>
    extends _$EntryStateCopyWithImpl<$Res>
    implements $EntryStateLoadedCopyWith<$Res> {
  _$EntryStateLoadedCopyWithImpl(
      EntryStateLoaded _value, $Res Function(EntryStateLoaded) _then)
      : super(_value, (v) => _then(v as EntryStateLoaded));

  @override
  EntryStateLoaded get _value => super._value as EntryStateLoaded;
}

/// @nodoc

class _$EntryStateLoaded implements EntryStateLoaded {
  const _$EntryStateLoaded();

  @override
  String toString() {
    return 'EntryState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EntryStateLoaded);
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
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EntryStateLoaded implements EntryState {
  const factory EntryStateLoaded() = _$EntryStateLoaded;
}
