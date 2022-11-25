import 'package:flutter/material.dart';
import 'package:project10d/product_screen.dart';
import 'package:project10d/test/cart_provider_1.dart';
import 'package:project10d/test/first_screen_class.dart';
import 'package:project10d/test/loginpage_1.dart';
import 'package:project10d/test/pro_scr.dart';
import 'package:provider/provider.dart';

import 'cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          // CartProvider(),
      CartProvider_1(),//=======================_1
      child: Builder(builder: (BuildContext context) {

        return MaterialApp(
          title: 'Flutter Demo',

          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,

          ),

          home: const
          FirstScreenClass(),

          // ProductScreen(),
          // LoginPageOne(),
          // ProScreen(),//================_1

        );
      }),
    );
  }
}
