import 'package:books_finder/datasource/books/book_repo.dart';
import 'package:books_finder/datasource/services/networking.dart';
import 'package:books_finder/models/book.dart';

class BookDataSourceImpl implements BookDataSource {
  @override
  Future<List<Book>> getBooksFromRemote(String keyword) async {
    final decodeJson = await Networking(keyword: keyword).getData();
    List<Book> books = (decodeJson['items'] as List).map((decodeJson) => Book.fromJson(decodeJson)).toList();
    print(books.toString());
    return books;
  }
}
