import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterexample1prj/prasctiseprog.dart';

class Carouselexample1 extends StatelessWidget {
  const Carouselexample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('hello'),
          Stack(
            children:const [
              CircleAvatar(backgroundImage:AssetImage('assets/img.png') ,radius: 25,),
              Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: CircleAvatar(backgroundImage:AssetImage('assets/img.png') ,radius: 25,),
            ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: CircleAvatar(backgroundImage:AssetImage('assets/img.png') ,radius: 25,),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.0),
                child: CircleAvatar(backgroundImage:AssetImage('assets/img.png') ,radius: 25,),
              ),

            ],
          ),
          // const Practiseprog1(),

          Center(
            child: Container(
              color: Colors.red,
              child: Image(image: AssetImage("assets/res_img1.png")),
            ),
          ),
                    CarouselSlider(
//               items: [
//             Container(
//               color: Colors.grey,
//               child: Image(image: AssetImage("assets/res_img1.png")),),
//             Container(
//               color: Colors.grey,
//               child: Image(image: AssetImage("assets/res_img1.png")),),
//             Container(
//               color: Colors.grey,
//               child: Image(image: AssetImage("assets/res_img1.png")),),
//             Container(
//               color: Colors.grey,
//               child: Image(image: AssetImage("assets/res_img1.png")),),
//             Container(
//               color: Colors.grey,
//               child: Image(image: AssetImage("assets/res_img1.png")),),
//
//        ].map((e) {
//             return Builder(builder: (BuildContext context){
//               return Container(
//                 color: Colors.grey,
//
// child: Image(image: AssetImage("assets/res_img1.png")),
//               );
//             }
//             );
//     }
//             ).toList(),
          items: [
            const Center(
                child: Text('hello',
                    style: TextStyle(
                      color: Colors.amber,
                      backgroundColor: Colors.black,
                      fontSize: 30,
                    ))),
            Container(
              color: Colors.redAccent,
              child: const Image(image: AssetImage("assets/res_img1.png")),
            ),
            Container(
              color: Colors.green,
              child: const Image(image: AssetImage("assets/res_img2.png")),
            ),
            Container(
              color: Colors.blue,
              child: const Image(image: AssetImage("assets/res_img3.png")),
            ),
            Container(
              color: Colors.yellow,
              child: const Image(image: AssetImage("assets/res_img4.png")),
            ),
            Container(
              color: Colors.grey,
              child: const Image(image: AssetImage("assets/res_img5.png")),
            ),
            Container(
              color: const Color(0xffF6fAE9),
              child: const Center(child: Text('thank you')),
            ),
          ],
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            initialPage: 0,
            // reverse: false,
            enlargeCenterPage: true,
          ),
        ), // image slider //carousel slider


        ],
      ),
    );
  }
}
