import 'package:equatable/equatable.dart';

abstract class BaseEntity extends Equatable {
  final int? status;
  final String? message;

  const BaseEntity({
    required this.status,
    required this.message,
  });
}
