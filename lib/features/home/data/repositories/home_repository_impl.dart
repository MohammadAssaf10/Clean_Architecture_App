import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/entities/home_pagination_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_sources/remote/home_remote_data_source.dart';
import '../models/home_model.dart';
import '../models/home_pagination_models/home_pagination_model.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({
    required this.homeRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<HomeEntity>>> getHomeList() async {
    try {
      final HomeModel result = await homeRemoteDataSource.getHomeList();
      final List<HomeEntity> homeDataItems =
          result.homeDataItems.map((item) => item.toDomain()).toList();
      return Right(homeDataItems);
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.exceptionMessage));
    } catch (e) {
      return const Left(ServerFailure(error: "Something went wrong"));
    }
  }

  @override
  Future<Either<Failure, HomePaginationEntity>> getHomePaginationList() async {
    try {
      final HomePaginationModel result =
          await homeRemoteDataSource.getHomePaginationList();
      return Right(result.toDomain());
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.exceptionMessage));
    } catch (e) {
      return const Left(ServerFailure(error: "Something went wrong"));
    }
  }
}
