import 'package:equatable/equatable.dart';

class HomeItem extends Equatable {
  final int id;
  final String title;
  final String description;

  const HomeItem({
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
