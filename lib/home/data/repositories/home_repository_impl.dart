import 'package:injectable/injectable.dart';

import '../../domain/entities/about_entity.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/entities/home_list_entity.dart';
import '../../domain/entities/home_pagination_entity.dart';
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
  Future<HomePaginationEntity> getHomePaginationList() async =>
      await homeRemoteDataSource.getHomePaginationList();

  @override
  Future<AboutEntity> getAbout() async {
    try {
      return await homeRemoteDataSource.getAbout();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
