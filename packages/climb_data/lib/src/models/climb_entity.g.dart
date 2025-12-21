// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'climb_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClimbEntityAdapter extends TypeAdapter<ClimbEntity> {
  @override
  final int typeId = 1;

  @override
  ClimbEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClimbEntity(
      uuid: fields[0] as String,
      name: fields[1] as String,
      fa: fields[2] as String?,
      gradeYds: fields[3] as String?,
      gradeVscale: fields[4] as String?,
      gradeFrench: fields[5] as String?,
      gradeNumeric: fields[6] as int,
      typeSport: fields[7] as bool,
      typeTrad: fields[8] as bool,
      typeBouldering: fields[9] as bool,
      typeTr: fields[10] as bool,
      typeAlpine: fields[11] as bool,
      typeIce: fields[12] as bool,
      typeMixed: fields[13] as bool,
      typeAid: fields[14] as bool,
      length: fields[15] as int,
      boltsCount: fields[16] as int,
      safety: fields[17] as String?,
      lat: fields[18] as double?,
      lng: fields[19] as double?,
      description: fields[20] as String?,
      protection: fields[21] as String?,
      areaUuid: fields[22] as String,
      pathTokens: (fields[23] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClimbEntity obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.fa)
      ..writeByte(3)
      ..write(obj.gradeYds)
      ..writeByte(4)
      ..write(obj.gradeVscale)
      ..writeByte(5)
      ..write(obj.gradeFrench)
      ..writeByte(6)
      ..write(obj.gradeNumeric)
      ..writeByte(7)
      ..write(obj.typeSport)
      ..writeByte(8)
      ..write(obj.typeTrad)
      ..writeByte(9)
      ..write(obj.typeBouldering)
      ..writeByte(10)
      ..write(obj.typeTr)
      ..writeByte(11)
      ..write(obj.typeAlpine)
      ..writeByte(12)
      ..write(obj.typeIce)
      ..writeByte(13)
      ..write(obj.typeMixed)
      ..writeByte(14)
      ..write(obj.typeAid)
      ..writeByte(15)
      ..write(obj.length)
      ..writeByte(16)
      ..write(obj.boltsCount)
      ..writeByte(17)
      ..write(obj.safety)
      ..writeByte(18)
      ..write(obj.lat)
      ..writeByte(19)
      ..write(obj.lng)
      ..writeByte(20)
      ..write(obj.description)
      ..writeByte(21)
      ..write(obj.protection)
      ..writeByte(22)
      ..write(obj.areaUuid)
      ..writeByte(23)
      ..write(obj.pathTokens);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClimbEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
