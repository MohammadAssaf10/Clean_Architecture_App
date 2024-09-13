import 'package:json_annotation/json_annotation.dart';

import '../entities/base_entity.dart';

part 'base_model.g.dart';

@JsonSerializable(createToJson: false)
class BaseModel extends BaseEntity {
  const BaseModel({
    required super.status,
    required super.message,
  });

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);

  @override
  List<Object?> get props => [
        status,
        message,
      ];
}
