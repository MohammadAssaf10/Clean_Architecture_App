import 'package:json_annotation/json_annotation.dart';

import '../entities/base_pagination_entity.dart';

@JsonSerializable(createFactory: false, createToJson: false)
abstract class BasePaginationModel extends BasePaginationEntity {
  const BasePaginationModel({
    required super.totalElements,
    required super.totalPages,
  });
}
