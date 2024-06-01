import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/sub_home_pagination.dart';
import 'sub_home_model.dart';

part 'sub_home_pagination_model.g.dart';

@JsonSerializable()
class SubHomePaginationModel extends SubHomePagination {
  @JsonKey(name: 'data')
  final List<SubHomeModel> homeModelItems;

  SubHomePaginationModel({
    required super.totalElements,
    required super.totalPages,
    required this.homeModelItems,
  }) : super(
          homeItems: homeModelItems,
        );

  factory SubHomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$SubHomePaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubHomePaginationModelToJson(this);
}
