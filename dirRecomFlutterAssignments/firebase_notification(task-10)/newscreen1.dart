import 'package:flutter/material.dart';

class Newscreen1 extends StatefulWidget {
  const Newscreen1({Key? key}) : super(key: key);

  @override
  State<Newscreen1> createState() => _Newscreen1State();
}

class _Newscreen1State extends State<Newscreen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Screen1")),
    );
  }
}
