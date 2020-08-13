part of 'book_bloc.dart';

@immutable
abstract class BookEvent {
  const  BookEvent();
}

class GetBook extends BookEvent{
  final String keyword ;
const GetBook({this.keyword});
}