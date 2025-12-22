import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:climb_data/climb_data.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  // Register ClimbRepository as singleton
  // Must be done before getIt.init() since blocs depend on it
  final dataSource = ClimbLocalDataSource();
  await dataSource.init();
  getIt.registerSingleton<ClimbRepository>(ClimbRepository(dataSource));
  
  // Initialize generated dependencies
  getIt.init();
}
