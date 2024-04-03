import '../entities/about_entity.dart';
import '../entities/home_entity.dart';
import '../entities/home_list_entity.dart';
import '../entities/home_pagination_entity.dart';

abstract class HomeRepository{
  Future<HomeEntity> getHome();
  Future<HomeListEntity> getHomeList();

  Future<HomePaginationEntity> getHomePaginationList();
  Future<AboutEntity> getAbout();
}