

import 'package:books_finder/models/book.dart';

abstract class BookDataSource{
  Future<List<Book>> getBooksFromRemote(String keyword);
}