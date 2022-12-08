// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viam_boat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ViamBoatAdapter extends TypeAdapter<ViamBoat> {
  @override
  final int typeId = 0;

  @override
  ViamBoat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ViamBoat(
      id: fields[0] as String,
      name: fields[1] as String,
      address: fields[2] as String,
      secret: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ViamBoat obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.secret);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViamBoatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
