import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home_list_entity.dart';
import 'sub_home_model.dart';

part 'home_list_model.g.dart';

@JsonSerializable()
class HomeListModel extends HomeListEntity {
  @JsonKey(name: 'data')
  final List<SubHomeModel> homeModelList;

  const HomeListModel({
    required super.status,
    required super.message,
    required this.homeModelList,
  }) : super(
          homeEntityList: homeModelList,
        );

  factory HomeListModel.fromJson(Map<String, dynamic> json) =>
      _$HomeListModelFromJson(json);
}
