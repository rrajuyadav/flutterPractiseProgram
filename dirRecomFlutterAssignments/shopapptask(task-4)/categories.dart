import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['handbag', 'jewellery', 'footwear', 'Dresses',];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    final category = categories.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 10),
        // color: Colors.red,
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category,

            itemBuilder: (BuildContext context, int index) {

              return GestureDetector(
                onTap: (){
                  setState((){ selectedindex=index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(categories[index],style: TextStyle(fontWeight: FontWeight.bold,
                        color: selectedindex==index?(Colors.black):Colors.grey, ),),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 2,
                        width: 40,
                        color: selectedindex==index?(Colors.black):Colors.transparent, )

                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}