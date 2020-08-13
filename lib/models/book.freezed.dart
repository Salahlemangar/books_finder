// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

class _$BookTearOff {
  const _$BookTearOff();

// ignore: unused_element
  _Book call({VolumeInfo volumeInfo}) {
    return _Book(
      volumeInfo: volumeInfo,
    );
  }
}

// ignore: unused_element
const $Book = _$BookTearOff();

mixin _$Book {
  VolumeInfo get volumeInfo;

  Map<String, dynamic> toJson();
  $BookCopyWith<Book> get copyWith;
}

abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({VolumeInfo volumeInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object volumeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      volumeInfo:
          volumeInfo == freezed ? _value.volumeInfo : volumeInfo as VolumeInfo,
    ));
  }

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({VolumeInfo volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object volumeInfo = freezed,
  }) {
    return _then(_Book(
      volumeInfo:
          volumeInfo == freezed ? _value.volumeInfo : volumeInfo as VolumeInfo,
    ));
  }
}

@JsonSerializable()
class _$_Book implements _Book {
  _$_Book({this.volumeInfo});

  factory _$_Book.fromJson(Map<String, dynamic> json) =>
      _$_$_BookFromJson(json);

  @override
  final VolumeInfo volumeInfo;

  @override
  String toString() {
    return 'Book(volumeInfo: $volumeInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.volumeInfo, volumeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.volumeInfo, volumeInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(volumeInfo);

  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  factory _Book({VolumeInfo volumeInfo}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  VolumeInfo get volumeInfo;
  @override
  _$BookCopyWith<_Book> get copyWith;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

class _$VolumeInfoTearOff {
  const _$VolumeInfoTearOff();

// ignore: unused_element
  _VolumeInfo call(
      {String title,
      String description,
      int pageCount,
      List<String> authors,
      String publishedDate,
      List<String> categories,
      Map<String, dynamic> imageLinks}) {
    return _VolumeInfo(
      title: title,
      description: description,
      pageCount: pageCount,
      authors: authors,
      publishedDate: publishedDate,
      categories: categories,
      imageLinks: imageLinks,
    );
  }
}

// ignore: unused_element
const $VolumeInfo = _$VolumeInfoTearOff();

mixin _$VolumeInfo {
  String get title;
  String get description;
  int get pageCount;
  List<String> get authors;
  String get publishedDate;
  List<String> get categories;
  Map<String, dynamic> get imageLinks;

  Map<String, dynamic> toJson();
  $VolumeInfoCopyWith<VolumeInfo> get copyWith;
}

abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int pageCount,
      List<String> authors,
      String publishedDate,
      List<String> categories,
      Map<String, dynamic> imageLinks});
}

class _$VolumeInfoCopyWithImpl<$Res> implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  final VolumeInfo _value;
  // ignore: unused_field
  final $Res Function(VolumeInfo) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object pageCount = freezed,
    Object authors = freezed,
    Object publishedDate = freezed,
    Object categories = freezed,
    Object imageLinks = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      pageCount: pageCount == freezed ? _value.pageCount : pageCount as int,
      authors: authors == freezed ? _value.authors : authors as List<String>,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks as Map<String, dynamic>,
    ));
  }
}

abstract class _$VolumeInfoCopyWith<$Res> implements $VolumeInfoCopyWith<$Res> {
  factory _$VolumeInfoCopyWith(
          _VolumeInfo value, $Res Function(_VolumeInfo) then) =
      __$VolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int pageCount,
      List<String> authors,
      String publishedDate,
      List<String> categories,
      Map<String, dynamic> imageLinks});
}

class __$VolumeInfoCopyWithImpl<$Res> extends _$VolumeInfoCopyWithImpl<$Res>
    implements _$VolumeInfoCopyWith<$Res> {
  __$VolumeInfoCopyWithImpl(
      _VolumeInfo _value, $Res Function(_VolumeInfo) _then)
      : super(_value, (v) => _then(v as _VolumeInfo));

  @override
  _VolumeInfo get _value => super._value as _VolumeInfo;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object pageCount = freezed,
    Object authors = freezed,
    Object publishedDate = freezed,
    Object categories = freezed,
    Object imageLinks = freezed,
  }) {
    return _then(_VolumeInfo(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      pageCount: pageCount == freezed ? _value.pageCount : pageCount as int,
      authors: authors == freezed ? _value.authors : authors as List<String>,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_VolumeInfo implements _VolumeInfo {
  _$_VolumeInfo(
      {this.title,
      this.description,
      this.pageCount,
      this.authors,
      this.publishedDate,
      this.categories,
      this.imageLinks});

  factory _$_VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_VolumeInfoFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int pageCount;
  @override
  final List<String> authors;
  @override
  final String publishedDate;
  @override
  final List<String> categories;
  @override
  final Map<String, dynamic> imageLinks;

  @override
  String toString() {
    return 'VolumeInfo(title: $title, description: $description, pageCount: $pageCount, authors: $authors, publishedDate: $publishedDate, categories: $categories, imageLinks: $imageLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VolumeInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality()
                    .equals(other.pageCount, pageCount)) &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.publishedDate, publishedDate) ||
                const DeepCollectionEquality()
                    .equals(other.publishedDate, publishedDate)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.imageLinks, imageLinks) ||
                const DeepCollectionEquality()
                    .equals(other.imageLinks, imageLinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(pageCount) ^
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(publishedDate) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(imageLinks);

  @override
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith =>
      __$VolumeInfoCopyWithImpl<_VolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VolumeInfoToJson(this);
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  factory _VolumeInfo(
      {String title,
      String description,
      int pageCount,
      List<String> authors,
      String publishedDate,
      List<String> categories,
      Map<String, dynamic> imageLinks}) = _$_VolumeInfo;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_VolumeInfo.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get pageCount;
  @override
  List<String> get authors;
  @override
  String get publishedDate;
  @override
  List<String> get categories;
  @override
  Map<String, dynamic> get imageLinks;
  @override
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith;
}
