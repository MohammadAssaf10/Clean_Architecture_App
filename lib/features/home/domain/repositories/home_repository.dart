import 'package:dartz/dartz.dart';

import '../entities/home.dart';
import '../entities/home_pagination/home_pagination.dart';

abstract class HomeRepository {
  Future<Either<Exception, Home>> getHomeList();
  Future<Either<Exception, HomePagination>> getHomePaginationList();
}
