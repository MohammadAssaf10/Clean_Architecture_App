// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_pagination_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePaginationItemModel _$HomePaginationItemModelFromJson(
        Map<String, dynamic> json) =>
    HomePaginationItemModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$HomePaginationItemModelToJson(
        HomePaginationItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
