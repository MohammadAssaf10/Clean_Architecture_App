import '../../../core/entities/base_pagination_entity.dart';
import 'sub_home_entity.dart';

class HomePaginationEntity extends BasePaginationEntity {
  final List<SubHomeEntity> homeEntityList;

  const HomePaginationEntity({
    required super.status,
    required super.message,
    required super.lastPage,
    required this.homeEntityList,
  });
}
