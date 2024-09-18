import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_entity.dart';
import '../entities/home_pagination_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<HomeEntity>>> getHomeList();
  Future<Either<Failure, HomePaginationEntity>> getHomePaginationList();
}
