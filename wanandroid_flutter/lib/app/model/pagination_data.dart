part of 'models.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  genericArgumentFactories: true,
)
class PaginationData<T> with _$PaginationData<T> {
  const factory PaginationData({
    required int curPage,
    required List<T> datas,
    required int offset,
    required int pageCount,
    required int size,
    required int total,
    @Default(false) bool over,
  }) = _PaginationData<T>;

  factory PaginationData.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) =>
      _$PaginationDataFromJson(json, fromJsonT);
}