import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project10d/test/pro_scr.dart';
import 'package:provider/provider.dart';

import '../product_screen.dart';
import 'cart_provider_1.dart';

class LoginPageOne extends StatefulWidget {
  const LoginPageOne({Key? key}) : super(key: key);
  @override
  State<LoginPageOne> createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  String name = "";
  CartProvider_1 jsonListOfData = CartProvider_1();

  final _formkey = GlobalKey<FormState>();

  void validate() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => ProScreen()));
      print("okk");
    } else {
      print("not okk");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/res_pic.png"), fit: BoxFit.cover)),
      child: Scaffold(
          // backgroundColor: Colors.blueAccent,
          backgroundColor: Colors.transparent,
          body: Center(
              child: SingleChildScrollView(
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
                height: 570,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 35, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Customer Details ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      const Text(
                        "for Better User Experience",
                        style: TextStyle(color: Colors.purple),
                      ),

                      const SizedBox(height: 25),
                      formmFieldd(), //==========================method for text field===================
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.grey,
                                  elevation: 6,
                                  backgroundColor: Colors.pink),
                              onPressed: () {
                                setState(() {
                                  validate();
                                });
                              },
                              child: const Text("Submit"))),

                      const SizedBox(height: 20),
                      Stack(children: [
                        const Divider(color: Colors.grey, thickness: 1),
                        Center(
                            child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    border: Border.all(width: 0.7)),
                                child: const Text(
                                  "OR",
                                  style: TextStyle(),
                                )))
                      ]),

                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("< GoBack")),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                // jsonListOfData.loadJsonData();
                                return const ProScreen();
                              }));
                            },
                            child: const Text("Go anyway >",
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ))),
    );
  }

  Widget formmFieldd() {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                labelText: "Name:", border: OutlineInputBorder()),
            controller: _controller1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter your name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Phone.no:",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter your phone Number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  labelText: "email", border: OutlineInputBorder()),
              controller: _controller,
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                  return "enter valid email address.";
                }
                return null;
              }),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

// Checkbox(
// value: Provider.of<CartProvider_1>(context,listen: false).value1,
// onChanged: (newvalue)=> Provider.of<CartProvider_1>(context,listen: false).changeOfData(newvalue),
// // =>context.read<CartProvider_1>().changeOfData(newvalue)
//
// // {
// //   return context.watch<CartProvider_1>().changeOfData(newvalue);
// //   // Provider.of<CartProvider_1>(context)(value1=newvalue);
// //   // setState(() {
// //     // if(newvalue != null){
// //     //   value1 = newvalue;
// //     // }                       // or
// //   //   value1 = newvalue!;
// //   // });
// // },
// ),
