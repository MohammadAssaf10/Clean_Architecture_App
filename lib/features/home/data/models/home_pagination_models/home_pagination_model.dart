import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/models/base_pagination_model.dart';
import '../../../domain/entities/home_pagination_entity.dart';
import 'home_pagination_item_model.dart';

part 'home_pagination_model.g.dart';

@JsonSerializable(createToJson: false)
class HomePaginationModel extends BasePaginationModel {
  @JsonKey(name: 'data')
  final List<HomePaginationItemModel> homePaginationItemsModel;

  const HomePaginationModel({
    required super.totalElements,
    required super.totalPages,
    required super.size,
    required super.numberOfElements,
    required this.homePaginationItemsModel,
  });

  factory HomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$HomePaginationModelFromJson(json);

  HomePaginationEntity toDomain() {
    return HomePaginationEntity(
      homePaginationItems:
          homePaginationItemsModel.map((item) => item.toDomain()).toList(),
      totalPages: totalPages,
    );
  }
}
