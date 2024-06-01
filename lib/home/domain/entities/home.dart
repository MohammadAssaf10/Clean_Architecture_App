import '../../../core/entities/base_entity.dart';
import 'sub_home.dart';

class HomeEntity extends BaseEntity {
  final SubHomeEntity homeEntity;

  const HomeEntity({
    required super.status,
    required super.message,
    required this.homeEntity,
  });
}
