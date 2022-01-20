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

  MenuStateLoaded loaded(GameData? gameData) {
    return MenuStateLoaded(
      gameData,
    );
  }

  MenuStateNewGame newGame() {
    return const MenuStateNewGame();
  }

  MenuStateContinueGame continueGame() {
    return const MenuStateContinueGame();
  }

  MenuStateHighScores highScores() {
    return const MenuStateHighScores();
  }

  MenuStateTips tips() {
    return const MenuStateTips();
  }

  MenuStateDump dump() {
    return const MenuStateDump();
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
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
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
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
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
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
  $Res call({GameData? gameData});
}

/// @nodoc
class _$MenuStateLoadedCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateLoadedCopyWith<$Res> {
  _$MenuStateLoadedCopyWithImpl(
      MenuStateLoaded _value, $Res Function(MenuStateLoaded) _then)
      : super(_value, (v) => _then(v as MenuStateLoaded));

  @override
  MenuStateLoaded get _value => super._value as MenuStateLoaded;

  @override
  $Res call({
    Object? gameData = freezed,
  }) {
    return _then(MenuStateLoaded(
      gameData == freezed
          ? _value.gameData
          : gameData // ignore: cast_nullable_to_non_nullable
              as GameData?,
    ));
  }
}

/// @nodoc

class _$MenuStateLoaded implements MenuStateLoaded {
  const _$MenuStateLoaded(this.gameData);

  @override
  final GameData? gameData;

  @override
  String toString() {
    return 'MenuState.loaded(gameData: $gameData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuStateLoaded &&
            (identical(other.gameData, gameData) ||
                const DeepCollectionEquality()
                    .equals(other.gameData, gameData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameData);

  @JsonKey(ignore: true)
  @override
  $MenuStateLoadedCopyWith<MenuStateLoaded> get copyWith =>
      _$MenuStateLoadedCopyWithImpl<MenuStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return loaded(gameData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return loaded?.call(gameData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gameData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MenuStateLoaded implements MenuState {
  const factory MenuStateLoaded(GameData? gameData) = _$MenuStateLoaded;

  GameData? get gameData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuStateLoadedCopyWith<MenuStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateNewGameCopyWith<$Res> {
  factory $MenuStateNewGameCopyWith(
          MenuStateNewGame value, $Res Function(MenuStateNewGame) then) =
      _$MenuStateNewGameCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateNewGameCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateNewGameCopyWith<$Res> {
  _$MenuStateNewGameCopyWithImpl(
      MenuStateNewGame _value, $Res Function(MenuStateNewGame) _then)
      : super(_value, (v) => _then(v as MenuStateNewGame));

  @override
  MenuStateNewGame get _value => super._value as MenuStateNewGame;
}

/// @nodoc

class _$MenuStateNewGame implements MenuStateNewGame {
  const _$MenuStateNewGame();

  @override
  String toString() {
    return 'MenuState.newGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateNewGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return newGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return newGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return newGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return newGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(this);
    }
    return orElse();
  }
}

abstract class MenuStateNewGame implements MenuState {
  const factory MenuStateNewGame() = _$MenuStateNewGame;
}

/// @nodoc
abstract class $MenuStateContinueGameCopyWith<$Res> {
  factory $MenuStateContinueGameCopyWith(MenuStateContinueGame value,
          $Res Function(MenuStateContinueGame) then) =
      _$MenuStateContinueGameCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateContinueGameCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateContinueGameCopyWith<$Res> {
  _$MenuStateContinueGameCopyWithImpl(
      MenuStateContinueGame _value, $Res Function(MenuStateContinueGame) _then)
      : super(_value, (v) => _then(v as MenuStateContinueGame));

  @override
  MenuStateContinueGame get _value => super._value as MenuStateContinueGame;
}

/// @nodoc

class _$MenuStateContinueGame implements MenuStateContinueGame {
  const _$MenuStateContinueGame();

  @override
  String toString() {
    return 'MenuState.continueGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateContinueGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return continueGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return continueGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (continueGame != null) {
      return continueGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return continueGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return continueGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (continueGame != null) {
      return continueGame(this);
    }
    return orElse();
  }
}

abstract class MenuStateContinueGame implements MenuState {
  const factory MenuStateContinueGame() = _$MenuStateContinueGame;
}

/// @nodoc
abstract class $MenuStateHighScoresCopyWith<$Res> {
  factory $MenuStateHighScoresCopyWith(
          MenuStateHighScores value, $Res Function(MenuStateHighScores) then) =
      _$MenuStateHighScoresCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateHighScoresCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateHighScoresCopyWith<$Res> {
  _$MenuStateHighScoresCopyWithImpl(
      MenuStateHighScores _value, $Res Function(MenuStateHighScores) _then)
      : super(_value, (v) => _then(v as MenuStateHighScores));

  @override
  MenuStateHighScores get _value => super._value as MenuStateHighScores;
}

/// @nodoc

class _$MenuStateHighScores implements MenuStateHighScores {
  const _$MenuStateHighScores();

  @override
  String toString() {
    return 'MenuState.highScores()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateHighScores);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return highScores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return highScores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (highScores != null) {
      return highScores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return highScores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return highScores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (highScores != null) {
      return highScores(this);
    }
    return orElse();
  }
}

abstract class MenuStateHighScores implements MenuState {
  const factory MenuStateHighScores() = _$MenuStateHighScores;
}

/// @nodoc
abstract class $MenuStateTipsCopyWith<$Res> {
  factory $MenuStateTipsCopyWith(
          MenuStateTips value, $Res Function(MenuStateTips) then) =
      _$MenuStateTipsCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateTipsCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateTipsCopyWith<$Res> {
  _$MenuStateTipsCopyWithImpl(
      MenuStateTips _value, $Res Function(MenuStateTips) _then)
      : super(_value, (v) => _then(v as MenuStateTips));

  @override
  MenuStateTips get _value => super._value as MenuStateTips;
}

/// @nodoc

class _$MenuStateTips implements MenuStateTips {
  const _$MenuStateTips();

  @override
  String toString() {
    return 'MenuState.tips()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateTips);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return tips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return tips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (tips != null) {
      return tips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return tips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return tips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (tips != null) {
      return tips(this);
    }
    return orElse();
  }
}

abstract class MenuStateTips implements MenuState {
  const factory MenuStateTips() = _$MenuStateTips;
}

/// @nodoc
abstract class $MenuStateDumpCopyWith<$Res> {
  factory $MenuStateDumpCopyWith(
          MenuStateDump value, $Res Function(MenuStateDump) then) =
      _$MenuStateDumpCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateDumpCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateDumpCopyWith<$Res> {
  _$MenuStateDumpCopyWithImpl(
      MenuStateDump _value, $Res Function(MenuStateDump) _then)
      : super(_value, (v) => _then(v as MenuStateDump));

  @override
  MenuStateDump get _value => super._value as MenuStateDump;
}

/// @nodoc

class _$MenuStateDump implements MenuStateDump {
  const _$MenuStateDump();

  @override
  String toString() {
    return 'MenuState.dump()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MenuStateDump);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(GameData? gameData) loaded,
    required TResult Function() newGame,
    required TResult Function() continueGame,
    required TResult Function() highScores,
    required TResult Function() tips,
    required TResult Function() dump,
  }) {
    return dump();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
  }) {
    return dump?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(GameData? gameData)? loaded,
    TResult Function()? newGame,
    TResult Function()? continueGame,
    TResult Function()? highScores,
    TResult Function()? tips,
    TResult Function()? dump,
    required TResult orElse(),
  }) {
    if (dump != null) {
      return dump();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuStateIdle value) idle,
    required TResult Function(MenuStateLoaded value) loaded,
    required TResult Function(MenuStateNewGame value) newGame,
    required TResult Function(MenuStateContinueGame value) continueGame,
    required TResult Function(MenuStateHighScores value) highScores,
    required TResult Function(MenuStateTips value) tips,
    required TResult Function(MenuStateDump value) dump,
  }) {
    return dump(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
  }) {
    return dump?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuStateIdle value)? idle,
    TResult Function(MenuStateLoaded value)? loaded,
    TResult Function(MenuStateNewGame value)? newGame,
    TResult Function(MenuStateContinueGame value)? continueGame,
    TResult Function(MenuStateHighScores value)? highScores,
    TResult Function(MenuStateTips value)? tips,
    TResult Function(MenuStateDump value)? dump,
    required TResult orElse(),
  }) {
    if (dump != null) {
      return dump(this);
    }
    return orElse();
  }
}

abstract class MenuStateDump implements MenuState {
  const factory MenuStateDump() = _$MenuStateDump;
}
