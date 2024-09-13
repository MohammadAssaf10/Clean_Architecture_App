// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      homeItemsModel: (json['data'] as List<dynamic>)
          .map((e) => HomeItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.homeItemsModel,
    };
