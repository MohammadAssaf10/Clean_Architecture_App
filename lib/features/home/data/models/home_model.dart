import 'package:json_annotation/json_annotation.dart';

import 'home_data_model.dart';

part 'home_model.g.dart';

@JsonSerializable(createToJson: false)
class HomeModel {
  @JsonKey(name: 'data')
  final List<HomeDataModel> homeDataItems;

  const HomeModel({
    required this.homeDataItems,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
