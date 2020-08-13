import 'package:books_finder/bloc/book_bloc.dart';
import 'package:books_finder/models/book.dart';
import 'package:books_finder/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool flag = false;

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //app bar

    final appBar = AppBar(
      title: Text('Searched Books'),
      centerTitle: true,
      leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ),  
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: flag ? appBar : null,
      body: BlocBuilder<BookBloc, BookState>(
        builder: (context, state) {
          if (state is BookInitial) {
            return buildInitial();
          } else if (state is BookLoading) {
            return buildLoading();
          } else if (state is BookLoaded) {
            return CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.all(16.0),
                  sliver: SliverGrid.count(
                    childAspectRatio: 2 / 3,
                    crossAxisCount: 3,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    children: state.books
                        .map<Widget>((book) => createTile(context, book))
                        .toList(),
                  ),
                )
              ],
            );
          }
          return null;
        },
      ),
    );
  }
}

///create book tile hero
createTile(BuildContext context, Book book) => Hero(
      tag: book.volumeInfo.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.green.shade900,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                      value: BlocProvider.of<BookBloc>(context),
                      child: Detail(book: book),
                    )));
          },
          child: Image(
            image: NetworkImage(book.volumeInfo.imageLinks['smallThumbnail']),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

///create book grid tiles
Widget buildInitial() {
  return Center(
    child: BookInputField(),
  );
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(
      backgroundColor: Colors.green,
    ),
  );
}

class BookInputField extends StatefulWidget {
  const BookInputField({
    Key key,
  }) : super(key: key);

  @override
  _BookInputFieldState createState() => _BookInputFieldState();
}

class _BookInputFieldState extends State<BookInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Books Finder',
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            onSubmitted: (value) => submitEvent(context, value),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: "Enter a book title",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }

  void submitEvent(BuildContext context, String bookTitle) {
    flag = true;
    BlocProvider.of<BookBloc>(context)
      ..add(GetBook(keyword: bookTitle))
      ..close();
  }
}
