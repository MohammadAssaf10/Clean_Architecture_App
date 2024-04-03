import 'base_entity.dart';

abstract class BasePaginationEntity extends BaseEntity {
  final int lastPage;

  const BasePaginationEntity({
    required super.status,
    required super.message,
    required this.lastPage,
  });
}
