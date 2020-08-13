import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  factory Book({
    VolumeInfo volumeInfo,
  }) = _Book;
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
abstract class VolumeInfo with _$VolumeInfo {
  factory VolumeInfo(
      {String title,
      String description,
      int pageCount,
      List<String> authors,
      String publishedDate,
      List<String> categories,
      Map<String, dynamic> imageLinks}) = _VolumeInfo;
  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}
