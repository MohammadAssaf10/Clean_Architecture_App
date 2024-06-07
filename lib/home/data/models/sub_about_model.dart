import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_about_model.g.dart';

@JsonSerializable()
class SubAboutModel extends Equatable {
  final int id;
  final String text;

  const SubAboutModel({
    required this.id,
    required this.text,
  });

  factory SubAboutModel.fromJson(Map<String, dynamic> json) =>
      _$SubAboutModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubAboutModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        text,
      ];
}
