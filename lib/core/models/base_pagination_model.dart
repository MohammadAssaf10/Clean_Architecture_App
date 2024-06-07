import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(createFactory: false, createToJson: false)
class BasePaginationModel extends Equatable {
  final int totalElements;
  final int totalPages;

  const BasePaginationModel({
    required this.totalElements,
    required this.totalPages,
  });

  @override
  List<Object?> get props => [
        totalElements,
        totalPages,
      ];
}
