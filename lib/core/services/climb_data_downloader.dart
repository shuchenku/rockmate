import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:climb_data/climb_data.dart';

class ClimbDataDownloader {
  static const String _githubReleaseUrl = 
      'https://github.com/shuchenku/rockmate/releases/download/v0.1.0-data/all_climbs.json';
  
  final ClimbRepository _repository;

  ClimbDataDownloader(this._repository);

  /// Download climb data from GitHub Releases with progress tracking
  Future<void> downloadAndImport({
    required Function(double progress, String status) onProgress,
  }) async {
    try {
      onProgress(0.0, 'Connecting to server...');

      // Download file
      final response = await http.get(Uri.parse(_githubReleaseUrl));
      
      if (response.statusCode != 200) {
        throw Exception('Failed to download: HTTP ${response.statusCode}');
      }

      onProgress(0.3, 'Download complete. Processing data...');

      // Save to temporary file
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/all_climbs.json');
      await tempFile.writeAsBytes(response.bodyBytes);

      onProgress(0.4, 'Importing ${response.bodyBytes.length ~/ 1024 ~/ 1024}MB of data...');

      // Import using DataImporter
      final dataSource = ClimbLocalDataSource();
      await dataSource.init();
      
      final importer = DataImporter(dataSource);
      
      int lastReportedProgress = 0;
      await importer.importFromFile(
        tempFile.path,
        onProgress: (current, total) {
          // Report progress every 5%
          final progressPercent = ((current / total) * 100).round();
          if (progressPercent - lastReportedProgress >= 5) {
            lastReportedProgress = progressPercent;
            final importProgress = 0.4 + (0.6 * (current / total));
            onProgress(
              importProgress,
              'Importing climbs: $current/$total ($progressPercent%)',
            );
          }
        },
      );

      // Cleanup
      await tempFile.delete();
      
      onProgress(1.0, 'Import complete!');
    } catch (e) {
      throw Exception('Download failed: $e');
    }
  }

  /// Check if data already exists
  Future<bool> hasData() async {
    return _repository.hasData;
  }
}
