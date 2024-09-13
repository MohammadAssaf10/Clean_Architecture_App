// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_home_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubHomePaginationModel _$SubHomePaginationModelFromJson(
        Map<String, dynamic> json) =>
    SubHomePaginationModel(
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      homePaginationItemsModel: (json['data'] as List<dynamic>)
          .map((e) =>
              HomePaginationItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubHomePaginationModelToJson(
        SubHomePaginationModel instance) =>
    <String, dynamic>{
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'data': instance.homePaginationItemsModel,
    };
