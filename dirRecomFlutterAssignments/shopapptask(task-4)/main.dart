import 'package:flutter/material.dart';
import 'package:uifluttertask/homescreen.dart';
import 'package:uifluttertask/newuitask1.dart';
import 'package:uifluttertask/secondscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      // home:Newuitaskone(),
      // home: Homescreen(),
        home: Nextpage(),

    );
  }
}




