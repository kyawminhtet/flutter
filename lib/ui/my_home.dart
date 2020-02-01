import 'package:db_hw/local/app_db.dart';
import 'package:db_hw/local/dao/book_dao.dart';
import 'package:flutter/material.dart';

class MyHome  extends StatefulWidget {
  final int id;
  MyHome({
    @required this.id
  });
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  String _errorMessage = "";

  static final AppDb appDb = AppDb();
  final BookDao bookDao = BookDao(appDb);

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    _textController.addListener(() {
      print(_textController.text);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(

                children: <Widget>[
                  TextFormField(
                    controller: _textController,
                    validator: (value) {
                      if(value.isEmpty) {
                        return "You need to add something";
                      }
                      return null;
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  FlatButton.icon(
                      onPressed: () async {
                        final bookName  = _textController.text;
                        Book book = Book(name: '$bookName');
                        await bookDao.insertBook(book);
                      },
                      icon: Icon(Icons.add),
                      label: Text("Submit")
                  )
                ],
              ),
            )
        )
    );
  }
}
