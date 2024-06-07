import 'package:json_annotation/json_annotation.dart';

import '../../../core/models/base_model.dart';
import 'sub_home_model.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel extends BaseModel {
  @JsonKey(name: 'data')
  final SubHomeModel homeModel;

  const HomeModel({
    required super.status,
    required super.message,
    required this.homeModel,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
