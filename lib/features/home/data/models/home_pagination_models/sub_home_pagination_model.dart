import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/home_pagination/sub_home_pagination.dart';
import 'home_pagination_item_model.dart';

part 'sub_home_pagination_model.g.dart';

@JsonSerializable()
class SubHomePaginationModel extends SubHomePagination {
  @JsonKey(name: 'data')
  final List<HomePaginationItemModel> homePaginationItemsModel;

  const SubHomePaginationModel({
    required super.totalElements,
    required super.totalPages,
    required this.homePaginationItemsModel,
  }) : super(
          homePaginationItems: homePaginationItemsModel,
        );

  factory SubHomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$SubHomePaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubHomePaginationModelToJson(this);
}
