import 'package:json_annotation/json_annotation.dart';

import '../../../core/models/base_model.dart';
import 'sub_home_pagination_model.dart';

part 'home_pagination_model.g.dart';

@JsonSerializable()
class HomePaginationModel extends BaseModel {
  @JsonKey(name: 'data')
  final SubHomePaginationModel subHomePaginationModel;

  const HomePaginationModel({
    required super.status,
    required super.message,
    required this.subHomePaginationModel,
  });

  factory HomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$HomePaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomePaginationModelToJson(this);
}
