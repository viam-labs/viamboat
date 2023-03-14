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
      boatPhotoImagePath: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ViamBoat obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.boatPhotoImagePath);
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
