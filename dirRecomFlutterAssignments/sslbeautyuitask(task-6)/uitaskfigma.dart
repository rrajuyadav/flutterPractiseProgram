import 'package:flutter/material.dart';
import 'package:untitled/uitaskfigmagridv1.dart';

import 'grid2figma.dart';

class Uitaskfigma1 extends StatefulWidget {
  const Uitaskfigma1({Key? key}) : super(key: key);
  @override
  State<Uitaskfigma1> createState() => _Uitaskfigma1State();
}

class _Uitaskfigma1State extends State<Uitaskfigma1> {
  int currentvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentvalue,
            onTap: (index) {
              setState(
                () => currentvalue = index,
              );
            },
            // (index)=>currentvalue=index,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'Categories',
                  tooltip: "PROFILE"),
              BottomNavigationBarItem(
                icon: Icon(Icons.diamond_outlined),
                label: 'Luxe',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face),
                label: 'Beauty Advice',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ]),
        body: ListView(children: [
          Container(
            color: const Color(0xffF8EDF1),
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.location_on_outlined),
                Text('  Bengaluru, 560047 ^')
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: const [
                SizedBox(
                  width: 250,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.favorite),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_bag),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Container( child: Image(image: AssetImage("assets/img_1.png")),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/singlecsvimg/img_1.png'),
                      height: 77,
                      width: 99,
                    ),
                    Text('Best Seller')
                  ],
                ),
                Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/singlecsvimg/img_2.png'),
                      height: 77,
                      width: 99,
                    ),
                    Text('New Arrivals')
                  ],
                ),
                Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/singlecsvimg/img_3.png'),
                      height: 77,
                      width: 99,
                    ),
                    Text('Fragrances')
                  ],
                ),
                Column(
                  children: const [
                    Image(
                        image: AssetImage('assets/singlecsvimg/img_4.png'),
                        height: 74),
                    Text('Makeup')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                const Image(image: AssetImage('assets/singlecsvimg/img.png')),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 28.0),
                      child: Text(
                        'Own Your Beauty Power',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Center(
                        child: Text(
                            'An experiential, interactive and \n'
                            ' inspirational beauty site',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                            maxLines: 2),
                      ),
                    ),
                    Container(
                      color: Colors.black54,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(color: Color(0xffF8EDF1)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ), //large image
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                Image(image: AssetImage('assets/singlecsvimg/img_5.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 15.4, top: 0),
                  child: Image(
                    image: AssetImage('assets/singlecsvimg/img_6.png'),
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'NEW',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180, top: 51),
                  child: Image(
                    image: AssetImage('assets/singlecsvimg/img_7.png'),
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220, top: 32),
                  child: Image(
                    image: AssetImage('assets/singlecsvimg/img_8.png'),
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 35),
                  child: Text(
                    'Flat 10% OFF  |  ONLY FOR TODAY',
                    style: TextStyle(
                        color: Color(0xffAD184C),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 60),
                  child: Text(
                    'Clarins Toners',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 90),
                  child: Text(
                    'Vitamin C for dull and oily skin',
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 110),
                  child: Container(
                      height: 34,
                      width: 120,
                      color: const Color(0xff000000),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'SHOP NOW',
                            style: TextStyle(
                              color: Color(0xffDEA3B7),
                            ),
                          ))),
                ),
              ],
            ),
          ), //
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const Text('Offers by top brands',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const figmasgridv1(),
          Stack(
            children: [
              const Image(
                image: AssetImage('assets/offerimg/offimg.png'),
              ),
              const Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Center(
                  child: Text(
                    'TOP LUXE OFFERS',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 50,
                ),
                child: Stack(
                  children: [
                    const Image(
                      image: AssetImage('assets/offerimg/offimg_1.png'),
                      width: 330,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 05,
                        top: 95,
                      ),
                      child: Container(
                        width: 320,
                        height: 45,
                        color: Colors.black38,
                        child: Column(
                          children: const [
                            Text(
                              'BUY 1 GET 1 FREE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'on minimum order of ₹1200',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 210,
                ),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/offerimg/offimg_2.png'),
                      width: 330,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 05,
                        top: 95,
                      ),
                      child: Container(
                        width: 320,
                        height: 45,
                        color: Colors.black38,
                        child: Column(
                          children: [
                            Text(
                              'BUY 1 GET 1 FREE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'on minimum order of ₹1200',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 370,
                ),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/offerimg/offimg_3.png'),
                      width: 330,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 05,
                        top: 95,
                      ),
                      child: Container(
                        width: 320,
                        height: 45,
                        color: Colors.black38,
                        child: Column(
                          children: [
                            Text(
                              'BUY 1 GET 1 FREE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'on minimum order of ₹1200',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 530,
                ),
                child: Stack(
                  children: [
                    const Image(
                      image: AssetImage('assets/offerimg/offimg_4.png'),
                      width: 330,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 05,
                        top: 95,
                      ),
                      child: Container(
                        width: 320,
                        height: 45,
                        color: Colors.black38,
                        child: Column(
                          children: const [
                            Text(
                              'BUY 1 GET 1 FREE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'on minimum order of ₹1200',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 710),
                child: Center(
                  child: Container(
                    color: const Color(0xffDEA3B7),
                    width: 100,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'VIEW ALL',
                          style: TextStyle(
                              // backgroundColor: Colors.red,
                              color: Colors.black),
                        )),
                  ),
                ),
              ),

              //Column(
              //                           children: [
              //                             Text(
              //                               'BUY 1 GET 1 FREE',
              //                               style: TextStyle(
              //                                   fontSize: 15,
              //                                   fontWeight: FontWeight.w500,
              //                                   color: Colors.white),
              //                             ),
              //                             Text(
              //                               'on minimum order of ₹1200',
              //                               style: TextStyle(
              //                                   fontWeight: FontWeight.w400,
              //                                   fontSize: 14,
              //                                   color: Colors.white),
              //                             )
              //                           ],
              //                         ),

              // Image(image: AssetImage('assets/offerimg/offimg_2.png')),
              // Image(image: AssetImage('assets/offerimg/offimg_3.png')),
              // Image(image: AssetImage('assets/offerimg/offimg_4.png')),,
            ],
          ),
          Container(
            height: 100,
            color: Color(0xff9A4942),
            child: Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Build your Beauty Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6,
                    ),
                    child: Text(
                        'Tell us about your skin '
                        'and hair in detail and we’ll curate "\n"'
                        ' products specially suited for your type.',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                Text(
                  'top categories for you',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/gridrow1/grimg.png'),
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/gridrow1/grimg_1.png'),
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/gridrow1/grimg_2.png'),
                      height: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/gridrow1/grimg_3.png'),
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/gridrow1/grimg_4.png'),
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/gridrow1/grimg_5.png'),
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color: const Color(0xffF7F6F9),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'TRENDING STORES',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image(image: AssetImage('assets/singleimage/siimg.png')),
                  SizedBox(
                    height: 8,
                  ),
                  Image(image: AssetImage('assets/singleimage/siimg_1.png')),
                ],
              ),
            ),
          ),
          Container(
            height: 636,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'THE FRAGRANCE STORE',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                const Text(
                  'fragrances You Will love',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Center(
                            child: Stack(children: [
                              Container(
                                height: 280,
                                width: 160,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            size: 10,
                                            color: Colors.pink,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Featured',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 11),
                                          ),
                                          SizedBox(
                                            width: 55,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.pink,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.fire_truck,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'EXPRESS DELIVERY',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 15),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/singleimage/siimg_5.png'),
                                              height: 80,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6, top: 60),
                                              child: Icon(
                                                Icons.star_border,
                                                size: 10,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, top: 60),
                                              child: Text('4.3'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '2 Sizes Available',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        '₹1200',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.pink,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        'Free Gift available',
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 250),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  color: Color(0xffDEA3B7),
                                  child: Center(
                                    child: Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Center(
                              child: Stack(children: [
                                Container(
                                  height: 280,
                                  width: 160,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              size: 10,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Featured',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 11),
                                            ),
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Colors.pink,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.fire_truck,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'EXPRESS DELIVERY',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 15),
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/singleimage/siimg_5.png'),
                                                height: 80,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6, top: 60),
                                                child: Icon(
                                                  Icons.star_border,
                                                  size: 10,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4, top: 60),
                                                child: Text('4.3'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2 Sizes Available',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '₹1200',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.pink,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Free Gift available',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 250),
                                  child: Container(
                                    height: 30,
                                    width: 160,
                                    color: Color(0xffDEA3B7),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Center(
                              child: Stack(children: [
                                Container(
                                  height: 280,
                                  width: 160,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              size: 10,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Featured',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 11),
                                            ),
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Colors.pink,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.fire_truck,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'EXPRESS DELIVERY',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 15),
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/singleimage/siimg_5.png'),
                                                height: 80,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6, top: 60),
                                                child: Icon(
                                                  Icons.star_border,
                                                  size: 10,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4, top: 60),
                                                child: Text('4.3'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2 Sizes Available',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '₹1200',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.pink,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Free Gift available',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 250),
                                  child: Container(
                                    height: 30,
                                    width: 160,
                                    color: Color(0xffDEA3B7),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.deepPurpleAccent.shade200,
                        height: 116,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                          image: AssetImage('assets/singleimage/siimg_2.png')),
                      Padding(
                          padding: EdgeInsets.only(left: 130, top: 20),
                          child: Text(
                            'Date Night Special',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 130, top: 45),
                        child: Text(
                          ' Planning a date night?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 72),
                        child: Container(
                            height: 28,
                            color: Colors.black,
                            child: TextButton(
                                onPressed: () {}, child: Text('VIEW BRANDS'))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        color: Color(0xffE0AF54),
                        height: 116,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195),
                        child: Image(
                            image:
                                AssetImage('assets/singleimage/siimg_4.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 20),
                        child: Text(
                          'Premium Fragrances',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Text(
                          'Planning a date night?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 72),
                        child: Container(
                            height: 28,
                            color: Color(0xff000000),
                            child: TextButton(
                                onPressed: () {},
                                child: Text('VIEW BRANDS',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffDEA3B7),
                                        fontWeight: FontWeight.w700)))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: Text('EXCLUSIVE AT SS BEAUTY')),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                const Image(image: AssetImage('assets/newlineimg/nlimg_4.png')),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 105,
                  ),
                  child: Container(
                    width: 244,
                    height: 44,
                    color: Colors.black38,
                    child: Column(
                      children: const [
                        Text(
                          'SAND & SKY',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Vegan And Cruelty Free Makeup',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                const Image(image: AssetImage('assets/newlineimg/nlimg_1.png')),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 105,
                  ),
                  child: Container(
                    width: 244,
                    height: 44,
                    color: Colors.black38,
                    child: Column(
                      children: const [
                        Text(
                          'SAND & SKY',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Vegan And Cruelty Free Makeup',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                const Image(image: AssetImage('assets/newlineimg/nlimg_2.png')),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 105,
                  ),
                  child: Container(
                    width: 244,
                    height: 44,
                    color: Colors.black38,
                    child: Column(
                      children: const [
                        Text(
                          'SAND & SKY',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Vegan And Cruelty Free Makeup',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                const Image(image: AssetImage('assets/newlineimg/nlimg_3.png')),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 105,
                  ),
                  child: Container(
                    width: 244,
                    height: 44,
                    color: Colors.black38,
                    child: Column(
                      children: const [
                        Text(
                          'SAND & SKY',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Vegan And Cruelty Free Makeup',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
// Text('hello'),
          Container(
            color: Color(0xffF2F2F3),
            height: 530,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 25),
                  child: Text(
                    'TOP RECOMMENDATIONS',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 29, top: 49),
                  child:
                      Image(image: AssetImage('assets/newlineimg/nlimg_5.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 225),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Center(
                            child: Stack(children: [
                              Container(
                                height: 280,
                                width: 160,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            size: 10,
                                            color: Colors.pink,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Featured',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 11),
                                          ),
                                          SizedBox(
                                            width: 55,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.pink,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.fire_truck,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'EXPRESS DELIVERY',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 15),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/singleimage/siimg_5.png'),
                                              height: 80,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6, top: 60),
                                              child: Icon(
                                                Icons.star_border,
                                                size: 10,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, top: 60),
                                              child: Text('4.3'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '2 Sizes Available',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        '₹1200',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.pink,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        'Free Gift available',
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 250),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  color: Color(0xffDEA3B7),
                                  child: Center(
                                    child: Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Center(
                              child: Stack(children: [
                                Container(
                                  height: 280,
                                  width: 160,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              size: 10,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Featured',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 11),
                                            ),
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Colors.pink,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.fire_truck,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'EXPRESS DELIVERY',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 15),
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/singleimage/siimg_5.png'),
                                                height: 80,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6, top: 60),
                                                child: Icon(
                                                  Icons.star_border,
                                                  size: 10,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4, top: 60),
                                                child: Text('4.3'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2 Sizes Available',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '₹1200',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.pink,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Free Gift available',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 250),
                                  child: Container(
                                    height: 30,
                                    width: 160,
                                    color: Color(0xffDEA3B7),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Center(
                              child: Stack(children: [
                                Container(
                                  height: 280,
                                  width: 160,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              size: 10,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Featured',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 11),
                                            ),
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Colors.pink,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.fire_truck,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'EXPRESS DELIVERY',
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 15),
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/singleimage/siimg_5.png'),
                                                height: 80,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6, top: 60),
                                                child: Icon(
                                                  Icons.star_border,
                                                  size: 10,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4, top: 60),
                                                child: Text('4.3'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Bvlgari Omnia Golden Citrine Eau De Toilette',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2 Sizes Available',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '₹1200',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.pink,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Free Gift available',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 250),
                                  child: Container(
                                    height: 30,
                                    width: 160,
                                    color: Color(0xffDEA3B7),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: Color(0xffffffff),
            height: 570,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Center(
                        child: Text(
                          'BUYING GUIDES',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 16),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  width: 160,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/newlineimg/nlimg_6.png')),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 95),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Palette and eyeshdow',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'The art of applying eye shadow ',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 160,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/newlineimg/nlimg_6.png')),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 95),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Palette and eyeshdow',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'The art of applying eye shadow ',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 160,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/newlineimg/nlimg_6.png')),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 95),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Palette and eyeshdow',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'The art of applying eye shadow ',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155),
                      child: Center(
                        child: Container(
                          color: const Color(0xffDEA3B7),
                          height: 40,
                          width: 140,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'VIEW ALL',
                                style: TextStyle(
                                    // backgroundColor: Colors.red,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text('MORE OFFERS'),
                const SizedBox(
                  height: 10,
                ),
                const Gridtwofigma(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Container(
                      color: const Color(0xffDEA3B7),
                      height: 40,
                      width: 140,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'VIEW ALL',
                            style: TextStyle(
                                // backgroundColor: Colors.red,
                                color: Colors.black),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 720,
          //   color: Colors.grey,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20, right: 20,top:25),
          //     child: Column(
          //       children: [
          //         Text('category in focus'),
          //         SizedBox(height:10),
          //         Container(
          //           height: 150,
          //           color: Colors.black,
          //           child:Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Center(
          //                 child: Text(
          //                   'OLAY',
          //                   style: TextStyle(
          //                     color: Colors.white,
          //                       fontSize: 25,
          //                       fontWeight: FontWeight.w700),
          //                 ),
          //               ),
          //
          //               Text(
          //                 'With beauty solutions for women of all ages,\n'
          //                     ' Olay reminds you that every day is a chance to\n'
          //                     ' be the best possible version of yourself.',
          //                 style: TextStyle(
          //                     fontSize: 10,
          //                     color: Colors.white,
          //
          //                     fontWeight: FontWeight.w400),
          //               ),
          //             ],
          //           ) ,
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ]));
  }
}
