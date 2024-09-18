abstract class BasePaginationModel {
  final int totalElements;
  final int totalPages;
  final int size;
  final int numberOfElements;

  const BasePaginationModel({
    required this.totalElements,
    required this.totalPages,
    required this.size,
    required this.numberOfElements,
  });
}
