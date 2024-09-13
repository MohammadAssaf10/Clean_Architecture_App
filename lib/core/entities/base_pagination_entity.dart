import 'package:equatable/equatable.dart';

abstract class BasePaginationEntity extends Equatable {
  final int totalElements;
  final int totalPages;

  const BasePaginationEntity({
    required this.totalElements,
    required this.totalPages,
  });
}
