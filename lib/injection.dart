import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:openbeta_client/openbeta_client.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.init();
  // Manually register OpenBetaClient since it's from external package
  getIt.registerFactory<OpenBetaClient>(() => OpenBetaClient());
}
