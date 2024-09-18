import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source_impl.dart';
import '../../../../../generated/assets.dart';
import '../../models/about_model.dart';
import 'about_remote_data_source.dart';

@LazySingleton(as: AboutRemoteDataSource)
class AboutRemoteDataSourceImpl extends BaseRemoteDataSourceImpl
    implements AboutRemoteDataSource {
  AboutRemoteDataSourceImpl({required super.dio});

  @override
  Future<AboutModel> getAbout() async {
    // final Map<String, dynamic> response = await performGetRequest(
    //   endpoint: Endpoints.about,
    //   language: 'en',
    // );
    final String jsonString = await rootBundle.loadString(Assets.jsonAbout);
    final Map<String, dynamic> result = jsonDecode(jsonString);
    await Future.delayed(const Duration(seconds: 2));
    return AboutModel.fromJson(result['data']);
  }
}
