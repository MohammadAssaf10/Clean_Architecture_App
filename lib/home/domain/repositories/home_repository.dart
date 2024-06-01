import 'package:dartz/dartz.dart';
import '../entities/about.dart';
import '../entities/home.dart';
import '../entities/home_list.dart';
import '../entities/home_pagination.dart';

abstract class HomeRepository {
  Future<HomeEntity> getHome();

  Future<HomeListEntity> getHomeList();

  Future<Either<Exception, HomePaginationEntity>> getHomePaginationList();

  Future<AboutEntity> getAbout();
}
