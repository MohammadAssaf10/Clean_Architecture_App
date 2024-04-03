import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home_pagination_entity.dart';
import 'sub_home_model.dart';

part 'home_pagination_model.g.dart';

@JsonSerializable()
class HomePaginationModel extends HomePaginationEntity {
  @JsonKey(name: 'data')
  final List<SubHomeModel> homeList;

  const HomePaginationModel(
      {required super.status,
      required super.message,
      required super.lastPage,
      required this.homeList})
      : super(
          homeEntityList: homeList,
        );

  factory HomePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$HomePaginationModelFromJson(json);
}
