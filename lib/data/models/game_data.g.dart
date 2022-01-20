// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameDataAdapter extends TypeAdapter<GameData> {
  @override
  final int typeId = 1;

  @override
  GameData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameData(
      score: fields[0] as int,
      dynamicGameArray: (fields[1] as List)
          .map((dynamic e) => (e as List).cast<int>())
          .toList(),
      staticGameArray: (fields[2] as List)
          .map((dynamic e) => (e as List).cast<int>())
          .toList(),
      currentTetro: (fields[3] as List?)
          ?.map((dynamic e) => (e as List).cast<int>())
          .toList(),
      activeTetro: fields[4] as int,
      gameFinished: fields[5] as bool,
      tetroBeginXY: (fields[6] as List).cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, GameData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.score)
      ..writeByte(1)
      ..write(obj.dynamicGameArray)
      ..writeByte(2)
      ..write(obj.staticGameArray)
      ..writeByte(3)
      ..write(obj.currentTetro)
      ..writeByte(4)
      ..write(obj.activeTetro)
      ..writeByte(5)
      ..write(obj.gameFinished)
      ..writeByte(6)
      ..write(obj.tetroBeginXY);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
