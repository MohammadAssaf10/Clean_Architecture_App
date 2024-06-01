import 'package:equatable/equatable.dart';

class SubHomeEntity extends Equatable {
  final int id;
  final String title;
  final String description;

  const SubHomeEntity({
    required this.id,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
