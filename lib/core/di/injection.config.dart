// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/about/data/data_sources/remote/about_remote_data_source.dart'
    as _i6;
import '../../features/about/data/data_sources/remote/about_remote_data_source_impl.dart'
    as _i840;
import '../../features/about/data/repositories/about_repository_impl.dart'
    as _i857;
import '../../features/about/domain/repositories/about_repository.dart'
    as _i302;
import '../../features/about/domain/use_cases/get_about_use_case.dart' as _i797;
import '../../features/about/presentation/bloc/about_bloc.dart' as _i161;
import '../../features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i744;
import '../../features/home/data/data_sources/remote/home_remote_data_source_impl.dart'
    as _i985;
import '../../features/home/data/repositories/home_repository_impl.dart'
    as _i76;
import '../../features/home/domain/repositories/home_repository.dart' as _i0;
import '../../features/home/domain/use_cases/get_home_list_use_case.dart'
    as _i741;
import '../../features/home/domain/use_cases/get_home_pagination_list_use_case.dart'
    as _i37;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../data/base_remote_data_source.dart' as _i205;
import '../data/base_remote_data_source_impl.dart' as _i1009;
import 'injection.dart' as _i464;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i205.BaseRemoteDataSource>(
      () => _i1009.BaseRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.lazySingleton<_i6.AboutRemoteDataSource>(
      () => _i840.AboutRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.lazySingleton<_i744.HomeRemoteDataSource>(
      () => _i985.HomeRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.lazySingleton<_i302.AboutRepository>(() => _i857.AboutRepositoryImpl(
      aboutRemoteDataSource: gh<_i6.AboutRemoteDataSource>()));
  gh.lazySingleton<_i0.HomeRepository>(() => _i76.HomeRepositoryImpl(
      homeRemoteDataSource: gh<_i744.HomeRemoteDataSource>()));
  gh.lazySingleton<_i741.GetHomeListUseCase>(
      () => _i741.GetHomeListUseCase(homeRepository: gh<_i0.HomeRepository>()));
  gh.lazySingleton<_i37.GetHomePaginationListUseCase>(() =>
      _i37.GetHomePaginationListUseCase(
          homeRepository: gh<_i0.HomeRepository>()));
  gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc(
        gh<_i741.GetHomeListUseCase>(),
        gh<_i37.GetHomePaginationListUseCase>(),
      ));
  gh.lazySingleton<_i797.GetAboutUseCase>(() =>
      _i797.GetAboutUseCase(aboutRepository: gh<_i302.AboutRepository>()));
  gh.factory<_i161.AboutBloc>(
      () => _i161.AboutBloc(gh<_i797.GetAboutUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i464.RegisterModule {}
