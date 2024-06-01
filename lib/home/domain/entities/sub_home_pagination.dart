import '../../../core/entities/base_pagination_entity.dart';
import 'sub_home.dart';

class SubHomePagination extends BasePaginationEntity {
  final List<SubHomeEntity> homeItems;

  const SubHomePagination({
    required super.totalElements,
    required super.totalPages,
    required this.homeItems,
  });
}
