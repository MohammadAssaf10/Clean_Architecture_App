import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/about.dart';

part 'about_model.g.dart';

@JsonSerializable(createToJson: false)
class AboutModel {
  final int id;
  final String text;

  const AboutModel({
    required this.id,
    required this.text,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) =>
      _$AboutModelFromJson(json);

  About toDomain() {
    return About(
      id: id,
      text: text,
    );
  }
}
