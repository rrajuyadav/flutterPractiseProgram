import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'newscreen1.dart';

class Firebaseexone extends StatefulWidget {
  const Firebaseexone({Key? key}) : super(key: key);

  @override
  State<Firebaseexone> createState() => _FirebaseexoneState();
}

class _FirebaseexoneState extends State<Firebaseexone> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /// gives you the message on which the user taps.
    ///and it opened the app from terminated state.
    FirebaseMessaging.instance.getInitialMessage().then((message){
      if(message != null){
        final routefrommessage = message.data['route'];
        Navigator.of(context).pushNamed(routefrommessage);
      }
    });
    /// foreground
    ///  this will work only when the app is in "foreground". not in background
    ///  we have to write some other code to the app notification in the background.
    ///
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print("okk");
      }
    });
    ///  when the app is in background and opened  and user click on notification.
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routefrommessage = message.data["route"];
      print(routefrommessage);
      Navigator.of(context).pushNamed(routefrommessage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("App (Notification)"),

      actions: [
        IconButton(onPressed: (){Navigator.of(context).pushNamed("s1");}, icon: Icon(Icons.arrow_forward))
      ],
      centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Text("Container"),


            ),
            Text("Dataone"),

            // Image(image: AssetImage("assets/img.png")),
            // InkWell(
            //   child: Image(image: AssetImage("assets/img.png")),
            //   onTap: () {
            //     print("object");
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Newscreen1()));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
