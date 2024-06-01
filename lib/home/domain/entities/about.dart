import '../../../core/entities/base_entity.dart';
import 'sub_about.dart';

class AboutEntity extends BaseEntity {
  final SubAboutEntity subAboutEntity;

  const AboutEntity({
    required super.status,
    required super.message,
    required this.subAboutEntity,
  });
}
