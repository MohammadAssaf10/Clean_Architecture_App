abstract class BasePaginationEntity {
  final int totalElements;
  final int totalPages;

  const BasePaginationEntity({
    required this.totalElements,
    required this.totalPages,
  });
}
