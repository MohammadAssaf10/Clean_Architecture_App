import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home_entity.dart';

part 'home_data_model.g.dart';

@JsonSerializable(createToJson: false)
class HomeDataModel {
  final int id;
  final String title;
  final String description;

  const HomeDataModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  HomeEntity toDomain() {
    return HomeEntity(
      id: id,
      title: title,
      description: description,
    );
  }
}
