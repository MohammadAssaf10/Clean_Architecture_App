import '../../../../../core/entities/base_pagination_entity.dart';
import 'home_pagination_item.dart';

class SubHomePagination extends BasePaginationEntity {
  final List<HomePaginationItem> homePaginationItems;

  const SubHomePagination({
    required super.totalElements,
    required super.totalPages,
    required this.homePaginationItems,
  });

  @override
  List<Object?> get props => [totalElements, totalPages, homePaginationItems,];
}
