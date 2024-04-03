// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePaginationModel _$HomePaginationModelFromJson(Map<String, dynamic> json) =>
    HomePaginationModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      lastPage: json['lastPage'] as int,
      homeList: (json['data'] as List<dynamic>)
          .map((e) => SubHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomePaginationModelToJson(
        HomePaginationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'lastPage': instance.lastPage,
      'data': instance.homeList,
    };
