import 'package:db_hw/ui/my_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';


//void main() => runApp(MyApp());
void main() {
  Stetho.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue[900]
      ),
      home: MyHome(),
    );
  }
}


