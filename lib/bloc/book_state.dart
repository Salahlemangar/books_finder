part of 'book_bloc.dart';

@immutable
abstract class BookState  {
  const  BookState();
}
class BookInitial extends BookState{
const BookInitial();
}
class BookLoading extends BookState{
  const BookLoading();
}
class BookLoaded extends BookState{
  final List<Book> books;
  BookLoaded({this.books});
}

