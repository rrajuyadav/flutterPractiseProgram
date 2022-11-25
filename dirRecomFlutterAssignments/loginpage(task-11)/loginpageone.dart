import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newfirebase/loginpagetaskk1/common_textfield.dart';
import 'package:newfirebase/practisenewconceps.dart';

import 'loginpagetaskk1/commondsyhfrh.dart';
import 'loginpagetaskk1/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "project",
      home:
          // PNC(),
          const Intropage(),
      debugShowCheckedModeBanner: false,
      // const Loginpageone(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class Loginpageone extends StatefulWidget {
  const Loginpageone({Key? key}) : super(key: key);
  @override
  State<Loginpageone> createState() => _LoginpageoneState();
}

class _LoginpageoneState extends State<Loginpageone> {
  bool value1 = false;

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  String name = "";

  final _formkey = GlobalKey<FormState>();

  void validate() {
    if (_formkey.currentState!.validate()) {
      print("okk");
    } else {
      print("not okk");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
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
                    const Text("LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 25),
                    const Text("Email",
                        style: TextStyle(fontWeight: FontWeight.w400)),

                   // CommonTextField(
                    //  labelText: "email",
                    //  hintText: 'Email',
                     // validator:(){
                    //  }),
TextFormField(),

                   // formmfieldd(),


                    // const Commonfirllllllld(),
// const Text("\u{1f440}"),

                    const SizedBox(height: 15),
                    const Text("Password"),
                    //CommonTextField(
                     // obscureText: true,
                     // labelText: "pass",
                    //  hintText: 'password',
                    //),
TextFormField(),

                    // formmfieldd2(),

                    // const Commonfirllllllld(),
// const Text("\u{1f446}"),
                    //cretaed new class for this textfield.
                    Row(children: [
                      Checkbox(
                        // checkbox.
                        // checkColor: Colors.pink,
                        value: value1,
                        onChanged: (newvalue) {
                          setState(() {
                            // if(newvalue != null){
                            //   value1 = newvalue;
                            // }                       // or
                            value1 = newvalue!;
                          });
                        },
                      ),
                      const Text("Remember me?"),
                    ]),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.grey,
                                elevation: 6,
                                backgroundColor: Colors.pink),
                            onPressed: () {
                              setState(() {
                                _formkey.currentState!.validate();
                              });
                            },
                            child: const Text("LOGIN"))),
                    const Padding(
                        padding: EdgeInsets.only(left: 165, top: 5),
                        child: Text(
                          "Forgot Password?",
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.black),
                        )),
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

                    _rowOfSocialLogin(),

                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                          text: TextSpan(
                              text: "Need an account? ",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text: 'SIGN UP',
                              style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap,
                            ),
                          ])),
                    ),

                    // Center(
                    //     child: Stack(children: const [
                    //   Text(
                    //     "Need an account? SIGN UP",
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //     ),
                    //   )
                    // ])),
                  ],
                ),
              )),
        )));
  }

  Widget _rowOfSocialLogin() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset("assets/img_3.png", height: 30),
      const SizedBox(width: 20),
      Image.asset("assets/img_1.png", height: 38),
      const SizedBox(width: 20),
      Image.asset("assets/img_2.png", height: 30)
    ]);
  }

  Widget formmfieldd() {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Text(
            "Password",
          ),

          // formmfieldd2(),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "password", border: OutlineInputBorder()),
            controller: _controller1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter password';
              } else if (value.length < 6) {
                return "enter more than 8 characters.";
              }
              return null;
            },
          ),
          // TextButton(
          //     onPressed: () {
          //       setState(() {
          //         validate();
          //       });
          //     },
          //     child: Text("fastclick")),
        ],
      ),
    );
  }

//  Widget formmfieldd2(){
//     return TextFormField(
//       decoration: InputDecoration(labelText: "password",border: OutlineInputBorder()),
//     controller: _controller,
//     validator: (value) {
//   if (value!.isEmpty ||
//   !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//       .hasMatch(value!)) {
//   return "enter valid email address.";
//   }
//   return null;
//   });
// }
}
