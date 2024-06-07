import 'package:json_annotation/json_annotation.dart';

import '../../../core/models/base_pagination_model.dart';
import 'sub_home_model.dart';

part 'sub_home_pagination_model.g.dart';

@JsonSerializable()
class SubHomePaginationModel extends BasePaginationModel {
  @JsonKey(name: 'data')
  final List<SubHomeModel> subHomeModelList;

  const SubHomePaginationModel({
    required super.totalElements,
    required super.totalPages,
    required this.subHomeModelList,
  });

  factory SubHomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$SubHomePaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubHomePaginationModelToJson(this);
}
