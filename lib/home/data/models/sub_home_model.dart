import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/sub_home.dart';

part 'sub_home_model.g.dart';

@JsonSerializable()
class SubHomeModel extends SubHomeEntity {
  const SubHomeModel({
    required super.id,
    required super.title,
    required super.description,
  });

  factory SubHomeModel.fromJson(Map<String, dynamic> json) =>
      _$SubHomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubHomeModelToJson(this);
}
