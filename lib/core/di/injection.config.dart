// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../home/bloc/home_bloc.dart' as _i6;
import '../../home/data/data_source/home_remote_data_source.dart' as _i4;
import '../../home/data/repositories/home_repository.dart' as _i5;
import 'injection.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.HomeRemoteDataSource>(
      () => _i4.HomeRemoteDataSource(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i5.HomeRepository>(() =>
      _i5.HomeRepository(homeRemoteDataSource: gh<_i4.HomeRemoteDataSource>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(gh<_i5.HomeRepository>()));
  return getIt;
}

class _$RegisterModule extends _i7.RegisterModule {}
