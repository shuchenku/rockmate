// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:climb_data/climb_data.dart' as _i597;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:rockmate/features/auth/data/repositories/auth_repository.dart'
    as _i225;
import 'package:rockmate/features/auth/presentation/bloc/auth_bloc.dart'
    as _i128;
import 'package:rockmate/features/climbing_data/presentation/bloc/route_detail_bloc.dart'
    as _i412;
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart'
    as _i71;
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart'
    as _i821;
import 'package:rockmate/features/logbook/presentation/bloc/logbook_bloc.dart'
    as _i812;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i225.AuthRepository>(
      () => _i225.AuthRepository(
        gh<_i59.FirebaseAuth>(),
        gh<_i116.GoogleSignIn>(),
      ),
    );
    gh.factory<_i71.RouteSearchBloc>(
      () => _i71.RouteSearchBloc(gh<_i597.ClimbRepository>()),
    );
    gh.factory<_i412.RouteDetailBloc>(
      () => _i412.RouteDetailBloc(gh<_i597.ClimbRepository>()),
    );
    gh.factory<_i812.LogbookBloc>(
      () => _i812.LogbookBloc(gh<_i821.LogbookRepository>()),
    );
    gh.factory<_i128.AuthBloc>(
      () => _i128.AuthBloc(gh<_i225.AuthRepository>()),
    );
    return this;
  }
}
