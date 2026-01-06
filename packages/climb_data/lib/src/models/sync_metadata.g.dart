// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_metadata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SyncMetadataAdapter extends TypeAdapter<SyncMetadata> {
  @override
  final int typeId = 3;

  @override
  SyncMetadata read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SyncMetadata(
      dataVersion: fields[0] as String,
      lastSyncTimestamp: fields[1] as int,
      downloadUrl: fields[2] as String,
      downloadSizeBytes: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SyncMetadata obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.dataVersion)
      ..writeByte(1)
      ..write(obj.lastSyncTimestamp)
      ..writeByte(2)
      ..write(obj.downloadUrl)
      ..writeByte(3)
      ..write(obj.downloadSizeBytes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncMetadataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
