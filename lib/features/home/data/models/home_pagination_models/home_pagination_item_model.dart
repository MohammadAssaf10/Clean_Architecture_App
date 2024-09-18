import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/home_pagination_item_entity.dart';

part 'home_pagination_item_model.g.dart';

@JsonSerializable(createToJson: false)
class HomePaginationItemModel {
  final int id;
  final String title;
  final String description;

  const HomePaginationItemModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory HomePaginationItemModel.fromJson(Map<String, dynamic> json) =>
      _$HomePaginationItemModelFromJson(json);

  HomePaginationItemEntity toDomain() {
    return HomePaginationItemEntity(
      id: id,
      title: title,
      description: description,
    );
  }
}
