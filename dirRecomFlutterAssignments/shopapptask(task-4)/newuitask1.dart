import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uifluttertask/catg1.dart';

class Newuitaskone extends StatelessWidget {
  List<String> handbag = [
    'assets/handbag1.jpg',
    'assets/handbag2.jpg',
    'assets/handbag3.jpg',
    'assets/handbag4.jpg',
    'assets/handbag5.jpg',
    'assets/handbag6.jpg',
    'assets/handbag7.jpg',
    'assets/handbag8.jpg',
  ];

  Newuitaskone({Key? key}) : super(key: key);
  // int selectable = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.grey,
        ),
        actions: const [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,

          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(' Women',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Category123(),
            SizedBox(height: 10,),

            Expanded(
             child: GridView.builder(
               // scrollDirection: Axis.vertical,
                 gridDelegate:
                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.0),
                 itemCount: handbag.length,
                 itemBuilder: (BuildContext context, int index) {
                   final item = handbag[index];
                   return Column(
                     children: [
                       // Text('Women'),
                   //     Container(
                   //       height: 100,
                   //       color: Color(0xff123456),
                   //       padding: EdgeInsets.all(5),
                   //
                   //       child: Image.asset(
                   //         // 'assets/handbag8.jpg',
                   //         handbag[index], //or simply item
                   //       ),
                   // ),
                   //       Text(handbag[index]),
                         Container(
                           height: 130,
                           width: 180,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(

                             image: DecorationImage(
                                 // image: AssetImage('assets/handbag1.jpg')),
                               image: AssetImage(item),
                             ),
                             color: Colors.pinkAccent[100],

                             border: Border.all(width: 2),
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),

                       Text('dummytext'),
                       Text('\$100'),
                     ],
                   );
                 }
             ),
           ),
          ],
        ),
      ),

         /**/

    );
  }
}
