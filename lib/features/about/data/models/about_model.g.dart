// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutModel _$AboutModelFromJson(Map<String, dynamic> json) => AboutModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      subAboutModel:
          SubAboutModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AboutModelToJson(AboutModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.subAboutModel,
    };
