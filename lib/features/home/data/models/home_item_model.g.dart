// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeItemModel _$HomeItemModelFromJson(Map<String, dynamic> json) =>
    HomeItemModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$HomeItemModelToJson(HomeItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
