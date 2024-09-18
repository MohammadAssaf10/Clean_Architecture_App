// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      homeDataItems: (json['data'] as List<dynamic>)
          .map((e) => HomeDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
