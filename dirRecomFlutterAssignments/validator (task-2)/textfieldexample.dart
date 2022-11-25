import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfieldexample extends StatefulWidget {
  const Textfieldexample({Key? key}) : super(key: key);

  @override
  State<Textfieldexample> createState() => _TextfieldexampleState();
}

class _TextfieldexampleState extends State<Textfieldexample> {
  var uname;
  @override
  Widget build(BuildContext context) {
    String uname;

    return Scaffold(
      appBar: AppBar(
        title: Text('textfield'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3)),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  focusColor: Colors.teal,
                  fillColor: Color(0xff12453),
                  filled: true,
                  labelText: 'Name',
                  hintText: 'Enter Your Name ',
                ),
                onChanged: (value)=> setState(()=>uname=value),


              ),

              SizedBox(
                height: 10,
              ),

              // TextField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       // borderSide: BorderSide(color: Colors.green, width: 5, style: BorderStyle.solid),
              //       borderRadius: BorderRadius.all(Radius.circular(10)),
              //       borderSide: BorderSide(color: Colors.green),
              //     ),
              //
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(20),
              //       ),
              //       borderSide: BorderSide(color: Colors.red, width: 2),
              //     ),
              //
              //     // fillColor: Colors.pink,
              //     // filled: true,
              //     prefixIcon: Icon(Icons.person),
              //     suffix: Text('hello'),
              //
              //     suffixIcon: Icon(Icons.send),
              //
              //     labelText: 'password',
              //     hintText: 'enter your password',
              //     // helperText: 'eidshjx', //         helper text
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     fillColor: Colors.grey,
              //     filled: true,
              //     labelText: 'Name',
              //     hintText: 'Enter Your Name ',
              //   ),
              // ),
TextFormField(
                decoration: InputDecoration(
                  label: Text('form'),
                  hintText: 'fffooorrmmm',
                  hintMaxLines: 5,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                // onChanged: (value)=> setState(()=>uname=value),


                validator: (value){
                  if(value!.length < 4){
                    return 'enter atleast 4 numbers.';

                  }else{
                   return null;
                  }
                },
                onChanged: (value)=> setState(()=>uname=value),

              ),
              ElevatedButton(
                  onPressed: () {}, child: Text('submit')),

              //---------------------------------------------RichText---------------
              RichText(
                text: TextSpan(
                  text: 'account?',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                  children: [
                    TextSpan(
                      text: '  SignUp',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
              ),
              //------------------------------------------------RichText------------------------

              
            ],
          ),
        ),
      ),
    );
  }
}
