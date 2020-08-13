// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$_$_BookFromJson(Map<String, dynamic> json) {
  return _$_Book(
    volumeInfo: json['volumeInfo'] == null
        ? null
        : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BookToJson(_$_Book instance) => <String, dynamic>{
      'volumeInfo': instance.volumeInfo,
    };

_$_VolumeInfo _$_$_VolumeInfoFromJson(Map<String, dynamic> json) {
  return _$_VolumeInfo(
    title: json['title'] as String,
    description: json['description'] as String,
    pageCount: json['pageCount'] as int,
    authors: (json['authors'] as List)?.map((e) => e as String)?.toList(),
    publishedDate: json['publishedDate'] as String,
    categories: (json['categories'] as List)?.map((e) => e as String)?.toList(),
    imageLinks: json['imageLinks'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_VolumeInfoToJson(_$_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'authors': instance.authors,
      'publishedDate': instance.publishedDate,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks,
    };
