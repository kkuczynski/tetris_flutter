// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  MenuStateIdle idle() {
    return const MenuStateIdle();
  }

  MenuStateLoaded loaded() {
    return const MenuStateLoaded();
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
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
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;
}

/// @nodoc
abstract class $MenuStateIdleCopyWith<$Res> {
  factory $MenuStateIdleCopyWith(
          MenuStateIdle value, $Res Function(MenuStateIdle) then) =
      _$MenuStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateIdleCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateIdleCopyWith<$Res> {
  _$MenuStateIdleCopyWithImpl(
      MenuStateIdle _value, $Res Function(MenuStateIdle) _then)
      : super(_value, (v) => _then(v as MenuStateIdle));

  @override
  MenuStateIdle get _value => super._value as MenuStateIdle;
}

/// @nodoc

class _$MenuStateIdle implements MenuStateIdle {
  const _$MenuStateIdle();

  @override
  String toString() {
    return 'MenuState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateIdle);
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
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MenuStateIdle implements MenuState {
  const factory MenuStateIdle() = _$MenuStateIdle;
}

/// @nodoc
abstract class $MenuStateLoadedCopyWith<$Res> {
  factory $MenuStateLoadedCopyWith(
          MenuStateLoaded value, $Res Function(MenuStateLoaded) then) =
      _$MenuStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateLoadedCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateLoadedCopyWith<$Res> {
  _$MenuStateLoadedCopyWithImpl(
      MenuStateLoaded _value, $Res Function(MenuStateLoaded) _then)
      : super(_value, (v) => _then(v as MenuStateLoaded));

  @override
  MenuStateLoaded get _value => super._value as MenuStateLoaded;
}

/// @nodoc

class _$MenuStateLoaded implements MenuStateLoaded {
  const _$MenuStateLoaded();

  @override
  String toString() {
    return 'MenuState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateLoaded);
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
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MenuStateLoaded implements MenuState {
  const factory MenuStateLoaded() = _$MenuStateLoaded;
}
