import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/home_pagination/home_pagination_item.dart';

part 'home_pagination_item_model.g.dart';

@JsonSerializable()
class HomePaginationItemModel extends HomePaginationItem {
  const HomePaginationItemModel({
    required super.id,
    required super.title,
    required super.description,
  });

  factory HomePaginationItemModel.fromJson(Map<String, dynamic> json) =>
      _$HomePaginationItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomePaginationItemModelToJson(this);
}
