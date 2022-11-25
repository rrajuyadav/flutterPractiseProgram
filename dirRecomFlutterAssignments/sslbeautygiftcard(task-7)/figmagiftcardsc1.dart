import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'gridbox1.dart';

class figmagiftcardscone extends StatefulWidget {
  const figmagiftcardscone({Key? key}) : super(key: key);
  @override
  State<figmagiftcardscone> createState() => _figmagiftcardsconeState();
}

class _figmagiftcardsconeState extends State<figmagiftcardscone> {
  int _value = 1;
  int currentIndex = 0;
  final controller = CarouselController();
  int activeIndex = 0;
  final _images = [
    'assets/img_1.png',
    'assets/img_5.png',
    'assets/img_6.png',
    'assets/img_7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.location_on_outlined,
          color: Colors.black,
        ),
        title: Text(
          'Choose your location ^',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        backgroundColor: Color(0xffFDE5EE),
        actions: [
          Icon(
            Icons.app_blocking_sharp,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Text(
              'Get The App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            color: Colors.white,
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.menu),
                Image(
                  image: AssetImage('assets/img.png'),
                  height: 33,
                  width: 120,
                ),
                Icon(Icons.search, size: 33),
                Stack(children: [
                  Icon(
                    Icons.favorite_border,
                    size: 33,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 8,
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )
                ]),
                Stack(children: [
                  Icon(Icons.shopping_bag_outlined, size: 33),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 8,
                      child: Text(
                        '12',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )
                ]),
              ],
            ), //appbar
          ),
        ), //appbar bottom view
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          // Center(
          //   child: Text(
          //     'SS BEAUTY GIFT CARDS,',
          //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          //   ),
          // ), //first text
          //  Padding   padding: const EdgeInsets.only(left: 20, right: 20),
          //   child: Stack(children: [
          //     Image(image: AssetImage('assets/img_1.png')),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 16, top: 42),
          //       child: Text(
          //         'SSBeauty E-Gift Cards',
          //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 16, top: 65),
          //       child: Text(
          //         'Share The Gift Of Beauty Instantly\n'
          //         'With Friends And Family. You Select \n'
          //         'The Amount And They Select Their \n'
          //         'Own Gift.  ',
          //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          //       ),
          //     ), // carousel image
          //     Padding(
          //       padding: const EdgeInsets.only(top: 190),
          //       child: Container(
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(
          //               height: 8,
          //               width: 15,
          //               decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(10)),
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             CircleAvatar(
          //               backgroundColor: Colors.black,
          //               radius: 4,
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             CircleAvatar(
          //               backgroundColor: Colors.black,
          //               radius: 4,
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             CircleAvatar(
          //               backgroundColor: Colors.black,
          //               radius: 4,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ), //indicator
          //   ]
          //   ),
          // ),
          Center(
            child: Text(
              'SS BEAUTY GIFT CARDS,',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: CarouselSlider.builder(
                carouselController: controller,
                options: CarouselOptions(
                  initialPage: 0,
                  height: 166,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _){
                    setState((){
                      activeIndex = index;
                    });
                  },
                  // scrollDirection: Axis.vertical,
                  autoPlayInterval: Duration(seconds: 2),
                ),
                itemCount: _images.length,
                itemBuilder: (context, index, realIndex) {
                  // final _image = _images[index];
                  return buildimage(_images[index], index);
                },
              ),
            ),
          ), // carousel slider
          SizedBox(
            height: 10,
          ),
          Center(child: buildindicator()), // carousel indicator
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffEAEAEA))),
                height: 930,
                // color: Color(0xffEAEAEA),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'SEND A GIFT CARD',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Browse gift cards by occasion',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Gridboxone(), //     gridbox
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'View All',
                          style: TextStyle(
                              color: Color(0xffAD184C),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(image: AssetImage('assets/img_2.png')),
                      SizedBox(
                        height: 10,
                      ),
                      Image(image: AssetImage('assets/img_3.png')),
                      SizedBox(
                        height: 10,
                      ),
                      Image(image: AssetImage('assets/img_4.png')),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 30,
                          width: 200,
                          color: Colors.black,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'CHOOSE AMOUNT',
                              style: TextStyle(
                                  color: Color(0xffDEA3B7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 25,
          ), // large container
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Received a gift card?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Add New Gift Card/ E-Gift Vouchers Or Check Balance',
                  style: TextStyle(fontSize: 13.6, fontWeight: FontWeight.w400),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState((){
                          _value = 1;
                        });
                      },
                    ),
                    Text('Gift Card'),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState((){
                          _value=2;
                        });
                      },
                    ),
                    Text('E-Gift Voucher'),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Card Number*',
                      hintText: 'Enter Card Number'),
                ),
                SizedBox(
                  height: 18,
                ),
                // #EAEAEA
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PIN Number*',
                    hintText: 'Enter Pin Number',
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 42,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xffDEA3B7))),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ADD BALANCE TO WALLET',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xffDEA3B7),
                        border: Border.all(width: 2, color: Color(0xffDEA3B7))),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'CHECK CARD BALANCE',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  '*Your wallet needs to be activated to add your gift card balance',
                  style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25,
                ),

                Container(
                  width: 350,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How To Use',

                            // textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ), // how to use container
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'T&Cs',

                            // textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ), // T&Cs container
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          // Container(child: bottomNavigationBar),    // bottom navigation bar

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: 'Categories'),
            BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined),
              label: 'Luxe',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.face_outlined), label: 'Beauty Advice'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ]),
    );
  }

  Widget buildimage(String image, int index) => Container(
        // color: Colors.red,
        child: Image.asset(
          _images[index],
          fit: BoxFit.cover,
        ),
      );

  Widget buildindicator() => AnimatedSmoothIndicator(
        onDotClicked: animatetoslide,
        activeIndex: activeIndex,
        count: _images.length,
        effect: ExpandingDotsEffect(
          dotColor: Colors.black,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.red,
          radius: 10,
          spacing: 6,
        ),
      );
  void animatetoslide(int index) =>
      controller.animateToPage(activeIndex = index);
  // Widget get bottomNavigationBar{
  //   return ClipRRect(
  //     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
  //     child: BottomNavigationBar(
  //
  //       type: BottomNavigationBarType.fixed,
  //       currentIndex: currentIndex,
  //       onTap: (index) {
  //         setState(() {
  //           currentIndex = index;
  //         });
  //       },
  //       selectedItemColor: Colors.pink,
  //       unselectedItemColor: Colors.black54,
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //             icon: Icon(Icons.menu), label: 'Categories'),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.diamond_outlined),
  //           label: 'Luxe',
  //         ),
  //         BottomNavigationBarItem(
  //             icon: Icon(Icons.face_outlined), label: 'Beauty Advice'),
  //         BottomNavigationBarItem(
  //             icon: Icon(Icons.account_circle), label: 'Account'),
  //       ]),
  //
  //   );
  // }
}
