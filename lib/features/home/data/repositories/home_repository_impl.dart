import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/home.dart';
import '../../domain/entities/home_pagination/home_pagination.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_sources/remote/home_remote_data_source.dart';
import '../models/home_model.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({
    required this.homeRemoteDataSource,
  });

  @override
  Future<Either<Exception, Home>> getHomeList() async {
    try {
      final HomeModel result = await homeRemoteDataSource.getHomeList();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, HomePagination>> getHomePaginationList() async {
    try {
      final HomePagination result =
          await homeRemoteDataSource.getHomePaginationList();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
