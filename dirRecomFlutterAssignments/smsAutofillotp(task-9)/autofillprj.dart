import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'otpfile.dart';

class Autofillprj extends StatefulWidget {
  const Autofillprj({Key? key}) : super(key: key);

  @override
  State<Autofillprj> createState() => _AutofillprjState();
}

class _AutofillprjState extends State<Autofillprj> {
  String? _code;

  // TextEditingController mobileController = TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final signcode = await SmsAutoFill().getAppSignature;

          print(signcode);
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => Otp()));
        },
        child: Text('login'),
      ),
    );
  }
}
