// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:openbeta_client/openbeta_client.dart' as _i408;

import 'features/climbing_data/data/datasources/route_local_data_source.dart'
    as _i125;
import 'features/climbing_data/data/repositories/route_repository.dart'
    as _i1010;
import 'features/climbing_data/presentation/bloc/route_search_bloc.dart'
    as _i194;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i125.RouteLocalDataSource>(() => _i125.RouteLocalDataSource());
    gh.factory<_i1010.RouteRepository>(
      () => _i1010.RouteRepository(
        gh<_i125.RouteLocalDataSource>(),
        gh<_i408.OpenBetaClient>(),
      ),
    );
    gh.factory<_i194.RouteSearchBloc>(
      () => _i194.RouteSearchBloc(gh<_i1010.RouteRepository>()),
    );
    return this;
  }
}
