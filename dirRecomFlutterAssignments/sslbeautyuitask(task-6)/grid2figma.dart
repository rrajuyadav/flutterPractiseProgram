import 'package:flutter/material.dart';

class Gridtwofigma extends StatefulWidget {
  const Gridtwofigma({Key? key}) : super(key: key);

  @override
  State<Gridtwofigma> createState() => _GridtwofigmaState();
}

class _GridtwofigmaState extends State<Gridtwofigma> {
  List _images = [
    {'image': 'assets/grid1img/gimg_4.png'},
    {'image': 'assets/grid1img/gimg_5.png'},
    {'image': 'assets/grid1img/gimg_6.png'},
    {'image': 'assets/grid1img/gimg_7.png'},
  ];
  List _names = [
    {'name': 'ELIZABETH ARDEN'},
    {'name': 'COLORBAR'},
    {'name': 'ARCELIA'},
    {'name': 'mamaearth'},
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
        physics: NeverScrollableScrollPhysics(),
        itemCount: _images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5, childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Image(
                  image: AssetImage(_images[index]['image']),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24,top:4,bottom:18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.2,color: Colors.white),
                    // color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 80,
                ),
                child: Container(
                  height: 30,
                  width: 145,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        _names[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.red[900]),
                      ),
                      const Text('Flat 50% Off',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 11))
                    ],
                  ),
                ),
              ),

            ],
          );
        },
      ),
      // ),
    );
  }
}
