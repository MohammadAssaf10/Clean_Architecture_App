// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      homeModel: SubHomeModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.homeModel,
    };
