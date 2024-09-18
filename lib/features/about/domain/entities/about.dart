import 'package:equatable/equatable.dart';

class About extends Equatable {
  final int id;
  final String text;

  const About({
    required this.id,
    required this.text,
  });

  @override
  List<Object?> get props => [
    id,
    text,
  ];
}
