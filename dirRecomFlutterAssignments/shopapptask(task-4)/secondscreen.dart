import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2761AB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2761AB),
        leading: Icon(
          Icons.arrow_back_outlined,
        ),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart_sharp,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22)),
              ),
              height: 500,
              // color: Colors.white,  this will not work if we not comment it will give error.

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 90),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Color',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF2761AB),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 10),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.grey, radius: 10),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Size',
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Text(
                              '12 cm',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), // three color data
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        maxLines: 4,
                        'Lorem Ipsum is simply dummy text ofthe printing and typesetting'
                        ' industry. Lorem Ipsum has been the industry\'s'
                        ' standard dummy text ever since the 1500s,when an unknown'
                        ' printer took a galley\n '
                        'of type and scrambled it to make a type specimen book.\n',style: TextStyle(color: Colors.grey),),
                  ), //text data
                  SizedBox(
                    height: 10,
                  ), //-,+,icon  data

                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F5F5),
                            borderRadius: BorderRadius.circular(12)),
                        width: 35,
                        height: 30,
                        child: const Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F5F5),
                            borderRadius: BorderRadius.circular(12)),
                        width: 35,
                        height: 30,
                        child: const Text(
                          '01',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F5F5),
                            borderRadius: BorderRadius.circular(12)),
                        width: 35,
                        height: 30,
                        child: const Text(
                          '+',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 210,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 18,
                        child: Icon(
                          Icons.favorite,
                          size: 22,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ), //-,+,icon  data
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Color(0xFF2761AB)),
                          borderRadius: BorderRadius.circular(20),
                          // color: Color(0xFF2761AB),
                        ),
                        child: Icon(
                          Icons.shopping_cart_checkout_sharp,
                          size: 40,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF2761AB),
                        ),
                        height: 60,
                        width: 240,
                        child: const Center(
                            child: Text(
                          'BUY NOW',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      )
                    ],
                  ), // buy now dat
                ],
              ),
            ),
          ), //white container data
          Column(
            children: const [
              Text(
                '   Aristrocrat Hand Bag',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              // SizedBox(height: 30,),

              Text(
                'CreamBag',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ],
          ), //bag data
          Padding(
            padding: const EdgeInsets.only(top: 230.0, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Price',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '\$234',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ), //price data
          Container(
            margin: const EdgeInsets.only(left: 130, top: 160),
            child: const Image(image: AssetImage('assets/handbag1.jpg')),
          ), //image
        ],
      ),
    );
  }
}
