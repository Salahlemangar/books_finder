import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:books_finder/datasource/books/book_repo.dart';
import 'package:books_finder/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'book_event.dart';
part 'book_state.dart';


class BookBloc extends Bloc<BookEvent, BookState> {
  BookDataSource bookDataSource;

  BookBloc(this.bookDataSource) : super(BookInitial());

  @override
  Stream<BookState> mapEventToState(
    BookEvent event,
  ) async* {
    yield BookLoading();
    if( event is GetBook){
      final books = await bookDataSource.getBooksFromRemote(event.keyword);
      yield BookLoaded(books:books);
    }
    
  }
}
