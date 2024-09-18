// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePaginationModel _$HomePaginationModelFromJson(Map<String, dynamic> json) =>
    HomePaginationModel(
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      numberOfElements: (json['numberOfElements'] as num).toInt(),
      homePaginationItemsModel: (json['data'] as List<dynamic>)
          .map((e) =>
              HomePaginationItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
