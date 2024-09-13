// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePaginationModel _$HomePaginationModelFromJson(Map<String, dynamic> json) =>
    HomePaginationModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      subHomePaginationModel:
          SubHomePaginationModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomePaginationModelToJson(
        HomePaginationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.subHomePaginationModel,
    };
