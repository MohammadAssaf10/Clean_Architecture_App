import '../../../core/entities/base_entity.dart';
import 'sub_home_pagination.dart';

class HomePaginationEntity extends BaseEntity {
  final SubHomePagination subHomePagination;

  const HomePaginationEntity({
    required super.status,
    required super.message,
    required this.subHomePagination,
  });
}
