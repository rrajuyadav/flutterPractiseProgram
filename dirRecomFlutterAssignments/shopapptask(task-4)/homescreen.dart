import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uifluttertask/categories.dart';
import 'package:uifluttertask/homescreen.dart';
import 'package:uifluttertask/itemcard.dart';
import 'package:uifluttertask/products.dart';
import 'package:uifluttertask/secondscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            print('nextpage');

            const Nextpage();
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.grey),
        ),
        // title: Text('hello',style: TextStyle(color: Colors.grey),),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.grey),
          ),
          SizedBox(width: 10),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey)),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '  Women',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Categories(),
          Expanded(

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: productlst.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.75
                  ),
                  itemBuilder: (BuildContext context,int index)=>Itemcard(product: productlst[index],),

              ),
            ),
          ),



        ],
      ),
    );
  }
}
