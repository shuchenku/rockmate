import 'package:hive/hive.dart';

part 'sync_metadata.g.dart';

/// Tracks version and sync status of downloaded climb data
@HiveType(typeId: 3)
class SyncMetadata extends HiveObject {
  /// Version tag of the data (e.g., 'v0.1.0-data')
  @HiveField(0)
  final String dataVersion;

  /// Timestamp when data was last synced (milliseconds since epoch)
  @HiveField(1)
  final int lastSyncTimestamp;

  /// URL from which the data was downloaded
  @HiveField(2)
  final String downloadUrl;

  /// Size of the downloaded data in bytes
  @HiveField(3)
  final int downloadSizeBytes;

  SyncMetadata({
    required this.dataVersion,
    required this.lastSyncTimestamp,
    required this.downloadUrl,
    required this.downloadSizeBytes,
  });

  /// DateTime of last sync
  DateTime get lastSyncDate =>
      DateTime.fromMillisecondsSinceEpoch(lastSyncTimestamp);

  /// Human-readable size
  String get downloadSizeMB =>
      '${(downloadSizeBytes / 1024 / 1024).toStringAsFixed(1)} MB';
}
