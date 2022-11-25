import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_screen extends StatelessWidget {
  const First_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          // leading: Icon(Icons.favorite_outline_rounded),
          // leading: Icon(Icons.favorite,color: Colors.red,),
          leading: Icon(Icons.menu),
          // leadingWidth: 45,
          title: Text("My Profile"),
          actions: [
            Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
            SizedBox(
              width: 20,
            ),
            // Icon( Icons.accessibility,)
          ],
          // centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('hello flutter'),
                //Image(image: 'assets/cat1.png',),//error
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                      // child: Center(
                    height: 210,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 5.0),
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image:AssetImage('assets/abc/cat12.png'),fit: BoxFit.fill),
                      // Image.asset('assets/abc/cat12.png')
                  ),
                          // child: Image.asset('assets/abc/cat12.png')
                      // )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'T Vamsi Krishna',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      // style: FontWeight(),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text('28 Years Old',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.call,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text('+91 9999988888',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.mail),
                    SizedBox(width: 25),
                    Text(
                      'vamsi.t@techouits.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
