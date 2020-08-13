import 'package:books_finder/bloc/book_bloc.dart';
import 'package:books_finder/datasource/books/book_repoImpl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/books_page.dart';
import 'screens/detail_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.green,
      
        brightness: Brightness.light
      ),
      home: BlocProvider(
        create: (context) => BookBloc(BookDataSourceImpl()),
        child: Home(),
      ),
    );
  }
}
