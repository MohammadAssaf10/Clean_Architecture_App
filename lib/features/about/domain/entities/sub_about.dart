import 'package:equatable/equatable.dart';

class SubAbout extends Equatable {
  final int id;
  final String text;

  const SubAbout({
    required this.id,
    required this.text,
  });

  @override
  List<Object?> get props => [
        id,
        text,
      ];
}
