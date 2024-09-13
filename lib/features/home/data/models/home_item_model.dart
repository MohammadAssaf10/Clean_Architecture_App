import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home_item.dart';

part 'home_item_model.g.dart';

@JsonSerializable()
class HomeItemModel extends HomeItem {
  const HomeItemModel({
    required super.id,
    required super.title,
    required super.description,
  });

  factory HomeItemModel.fromJson(Map<String, dynamic> json) =>
      _$HomeItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeItemModelToJson(this);
}
