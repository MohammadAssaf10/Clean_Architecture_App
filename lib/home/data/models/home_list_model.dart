import 'package:json_annotation/json_annotation.dart';

import '../../../core/models/base_model.dart';
import 'sub_home_model.dart';

part 'home_list_model.g.dart';

@JsonSerializable()
class HomeListModel extends BaseModel {
  @JsonKey(name: 'data')
  final List<SubHomeModel> homeModelList;

  const HomeListModel({
    required super.status,
    required super.message,
    required this.homeModelList,
  });

  factory HomeListModel.fromJson(Map<String, dynamic> json) =>
      _$HomeListModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeListModelToJson(this);

}
