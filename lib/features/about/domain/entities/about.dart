import '../../../../core/entities/base_entity.dart';
import 'sub_about.dart';

class About extends BaseEntity {
  final SubAbout subAbout;

  const About({
    required super.status,
    required super.message,
    required this.subAbout,
  });

  @override
  List<Object?> get props => [
        status,
        message,
        subAbout,
      ];
}
