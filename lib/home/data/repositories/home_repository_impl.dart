import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/about.dart';
import '../../domain/entities/home.dart';
import '../../domain/entities/home_list.dart';
import '../../domain/entities/home_pagination.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_source/home_remote_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<HomeEntity> getHome() async => await homeRemoteDataSource.getHome();

  @override
  Future<HomeListEntity> getHomeList() async =>
      await homeRemoteDataSource.getHomeList();

  @override
  Future<Either<Exception, HomePaginationEntity>>
      getHomePaginationList() async {
    try {
      final result = await homeRemoteDataSource.getHomePaginationList();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<AboutEntity> getAbout() async {
    try {
      return await homeRemoteDataSource.getAbout();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
