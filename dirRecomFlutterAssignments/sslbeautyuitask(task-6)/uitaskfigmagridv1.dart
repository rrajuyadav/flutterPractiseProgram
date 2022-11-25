import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class figmasgridv1 extends StatefulWidget {
  const figmasgridv1({Key? key}) : super(key: key);

  @override
  State<figmasgridv1> createState() => _figmasgridv1State();
}

class _figmasgridv1State extends State<figmasgridv1> {
  // int _itemcount=6;
   List kcolor = [
    {'color': Colors.blue},
    {'color': Colors.green}
  ];
  final List _images = [
    {'image': 'assets/grid1img/gimg.png'},
    {'image': 'assets/grid1img/gimg_1.png'},
    {'image': 'assets/grid1img/gimg_2.png'},
    {'image': 'assets/grid1img/gimg_3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // child:
      // Padding(
      // padding: const EdgeInsets.only(
      //   left: 20,
      //   right: 20,
      // ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 5,
          childAspectRatio: 1.5,

        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Image(
                  image: AssetImage(_images[index]['image']),
                  // height: 120,
                  // width: 160,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 42,
                  top: 80,
                ),
                child: Container(
                  height: 35,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'FLAT 50% DISCOUNT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.red[900]),
                      ),
                      const Text('on selected products',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400, fontSize: 11))
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
      // ),
    );
  }
}
// Image(image: AssetImage(_images[index]['image']),height: 120,width: 160,),
// color: kcolor[index]['color'],
