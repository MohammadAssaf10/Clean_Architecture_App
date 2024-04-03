import 'package:equatable/equatable.dart';

class SubAboutEntity extends Equatable {
  final int id;
  final String text;

  const SubAboutEntity({
    required this.id,
    required this.text,
  });

  @override
  List<Object?> get props => [
        id,
        text,
      ];
}
