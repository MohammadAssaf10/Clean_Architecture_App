import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/about.dart';
import 'sub_about_model.dart';

part 'about_model.g.dart';

@JsonSerializable()
class AboutModel extends About {
  @JsonKey(name: 'data')
  final SubAboutModel subAboutModel;

  const AboutModel(
      {required super.status,
      required super.message,
      required this.subAboutModel})
      : super(
          subAbout: subAboutModel,
        );

  factory AboutModel.fromJson(Map<String, dynamic> json) =>
      _$AboutModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutModelToJson(this);
}
