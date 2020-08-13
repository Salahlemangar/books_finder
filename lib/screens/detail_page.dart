import 'package:books_finder/bloc/book_bloc.dart';
import 'package:books_finder/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail extends StatefulWidget {
  final Book book;

  Detail({Key key, @required this.book}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<BookBloc>(context)
      ..add(GetBook(keyword: widget.book.volumeInfo.title));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('Design Books'),
      centerTitle: true,
   
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.only(bottom: 16.0),
              child: BlocBuilder<BookBloc, BookState>(
                builder: (context, state) {
                  if (state is BookLoading) {
                    buildLoading();
                  } else if (state is BookLoaded) {
                    return buildRowWithData(context, widget.book);
                  }
                },
              )),
          
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Row buildRowWithData(BuildContext context, Book book) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Hero(
                  tag: book.volumeInfo.title,
                  child: Material(
                    elevation: 15.0,
                    shadowColor: Colors.yellow.shade900,
                    child: Image(
                      image:
                          NetworkImage(book.volumeInfo.imageLinks['thumbnail']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
               text('${widget.book.volumeInfo.pageCount} pages', color: Colors.black38, size: 12)
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text(book.volumeInfo.title,
                  size: 16, isBold: true, padding: EdgeInsets.only(top: 16.0)),
              text(
                'by ${book.volumeInfo.authors[0]}',
                color: Colors.black54,
                size: 12,
                padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
              ),
       
              SizedBox(height: 32.0),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.blue.shade200,
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 160.0,
                  color: Colors.blue,
                  child: text('BUY IT NOW', color: Colors.white, size: 13),
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
