import '../../../core/entities/base_entity.dart';
import 'sub_home.dart';

class HomeListEntity extends BaseEntity {
  final List<SubHomeEntity> homeEntityList;

  const HomeListEntity({
    required super.status,
    required super.message,
    required this.homeEntityList,
  });
}
