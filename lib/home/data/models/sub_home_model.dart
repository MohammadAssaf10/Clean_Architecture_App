import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_home_model.g.dart';

@JsonSerializable()
class SubHomeModel extends Equatable {
  final int id;
  final String title;
  final String description;

  const SubHomeModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory SubHomeModel.fromJson(Map<String, dynamic> json) =>
      _$SubHomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubHomeModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
