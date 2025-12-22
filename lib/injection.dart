import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:climb_data/climb_data.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  // Register ClimbRepository manually (from external package)
  final dataSource = ClimbLocalDataSource();
  await dataSource.init();
  final repository = ClimbRepository(dataSource);
  getIt.registerSingleton<ClimbRepository>(repository);
  
  // Initialize generated dependencies
  getIt.init();
}
