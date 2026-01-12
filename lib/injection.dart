import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart';
import 'package:rockmate/features/logbook/data/datasources/logbook_local_data_source.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  // Register Firebase Auth
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
  
  // Register ClimbRepository manually (from external package)
  final dataSource = ClimbLocalDataSource();
  await dataSource.init();
  final repository = ClimbRepository(dataSource);
  getIt.registerSingleton<ClimbRepository>(repository);
  
  // Register LogbookRepository (in-memory for development)
  getIt.registerSingleton<LogbookRepository>(LogbookLocalDataSource());
  
  // Call generated config
  getIt.init();
}
