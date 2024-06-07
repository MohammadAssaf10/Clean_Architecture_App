import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../data_source/home_remote_data_source.dart';
import '../models/about_model.dart';
import '../models/home_list_model.dart';
import '../models/home_model.dart';
import '../models/home_pagination_model.dart';

@lazySingleton
class HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepository({required this.homeRemoteDataSource});

  Future<HomeModel> getHome() async => await homeRemoteDataSource.getHome();

  Future<HomeListModel> getHomeList() async =>
      await homeRemoteDataSource.getHomeList();

  Future<Either<Exception, HomePaginationModel>> getHomePaginationList() async {
    try {
      final HomePaginationModel result =
          await homeRemoteDataSource.getHomePaginationList();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<AboutModel> getAbout() async {
    try {
      return await homeRemoteDataSource.getAbout();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
