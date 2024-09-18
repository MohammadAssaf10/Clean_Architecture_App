import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable(createToJson: false)
class BaseModel {
  final int status;
  final String message;

  const BaseModel({
    required this.status,
    required this.message,
  });

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);
}
