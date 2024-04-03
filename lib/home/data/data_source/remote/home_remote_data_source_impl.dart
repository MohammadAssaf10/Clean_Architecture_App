import 'dart:convert';

import 'package:clean_architecture_app/home/data/models/about_model.dart';
import 'package:clean_architecture_app/home/data/models/home_model.dart';
import 'package:clean_architecture_app/home/data/models/home_list_model.dart';
import 'package:clean_architecture_app/home/data/models/home_pagination_model.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_remote_data_source.dart';
import '../../../../core/utils/constants.dart';
import 'home_remote_data_source.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl extends BaseRemoteDataSourceImpl
    implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({required super.dio});

  @override
  Future<HomeModel> getHome() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home.json');
    final Map<String, dynamic> homeModelJson = jsonDecode(jsonString);
    final HomeModel homeModel = HomeModel.fromJson(homeModelJson);
    return homeModel;
  }

  @override
  Future<HomeListModel> getHomeList() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home_list.json');
    final Map<String, dynamic> homeListModelJson = jsonDecode(jsonString);
    final HomeListModel homeListModel =
        HomeListModel.fromJson(homeListModelJson);
    return homeListModel;
  }

  @override
  Future<HomePaginationModel> getHomePaginationList() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home_pagination.json');
    final Map<String, dynamic> homePaginationModelJson = jsonDecode(jsonString);
    final HomePaginationModel homePaginationModel =
        HomePaginationModel.fromJson(homePaginationModelJson);
    return homePaginationModel;
  }

  @override
  Future<AboutModel> getAbout() async {
    final response = await performGetRequest(
      endpoint: Endpoints.about,
      language: 'en',
    );
    return AboutModel.fromJson(response);
  }
}
