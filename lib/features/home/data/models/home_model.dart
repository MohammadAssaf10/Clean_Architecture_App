import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home.dart';
import 'home_item_model.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel extends Home {
  @JsonKey(name: 'data')
  final List<HomeItemModel> homeItemsModel;

  const HomeModel({
    required super.status,
    required super.message,
    required this.homeItemsModel,
  }) : super(
          homeItems: homeItemsModel,
        );
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

}
