import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source_impl.dart';
import '../../../../../generated/assets.dart';
import '../../models/home_model.dart';
import '../../models/home_pagination_models/home_pagination_model.dart';
import 'home_remote_data_source.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl extends BaseRemoteDataSourceImpl
    implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({required super.dio});

  @override
  Future<HomeModel> getHomeList() async {
    final String jsonString = await rootBundle.loadString(Assets.jsonHomeList);
    final Map<String, dynamic> result = jsonDecode(jsonString);
    await Future.delayed(const Duration(seconds: 2));
    return HomeModel.fromJson(result);
  }

  @override
  Future<HomePaginationModel> getHomePaginationList() async {
    final String jsonString =
        await rootBundle.loadString(Assets.jsonHomePagination);
    final Map<String, dynamic> result = jsonDecode(jsonString);
    await Future.delayed(const Duration(seconds: 2));
    return HomePaginationModel.fromJson(result['data']);
  }
}
