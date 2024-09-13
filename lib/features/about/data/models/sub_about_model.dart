import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/sub_about.dart';

part 'sub_about_model.g.dart';

@JsonSerializable()
class SubAboutModel extends SubAbout {
  const SubAboutModel({
    required super.id,
    required super.text,
  });

  factory SubAboutModel.fromJson(Map<String, dynamic> json) =>
      _$SubAboutModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubAboutModelToJson(this);

}
