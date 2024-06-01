// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_home_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubHomePaginationModel _$SubHomePaginationModelFromJson(
        Map<String, dynamic> json) =>
    SubHomePaginationModel(
      totalElements: json['totalElements'] as int,
      totalPages: json['totalPages'] as int,
      homeModelItems: (json['data'] as List<dynamic>)
          .map((e) => SubHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubHomePaginationModelToJson(
        SubHomePaginationModel instance) =>
    <String, dynamic>{
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'data': instance.homeModelItems,
    };
