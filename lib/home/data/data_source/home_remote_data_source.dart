import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/base_remote_data_source.dart';
import '../../../core/utils/constants.dart';
import '../models/about_model.dart';
import '../models/home_list_model.dart';
import '../models/home_model.dart';
import '../models/home_pagination_model.dart';

@lazySingleton
class HomeRemoteDataSource extends BaseRemoteDataSource {
  HomeRemoteDataSource({required super.dio});

  Future<HomeModel> getHome() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home.json');
    final Map<String, dynamic> homeModelJson = jsonDecode(jsonString);
    final HomeModel homeModel = HomeModel.fromJson(homeModelJson);
    return homeModel;
  }

  Future<HomeListModel> getHomeList() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home_list.json');
    final Map<String, dynamic> homeListModelJson = jsonDecode(jsonString);
    final HomeListModel homeListModel =
        HomeListModel.fromJson(homeListModelJson);
    return homeListModel;
  }

  Future<HomePaginationModel> getHomePaginationList() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/home_pagination.json');
    final Map<String, dynamic> homePaginationModelJson = jsonDecode(jsonString);
    final HomePaginationModel homePaginationModel =
        HomePaginationModel.fromJson(homePaginationModelJson);
    return homePaginationModel;
  }

  Future<AboutModel> getAbout() async {
    final response = await performGetRequest(
      endpoint: Endpoints.about,
      language: 'en',
    );
    return AboutModel.fromJson(response);
  }
}
