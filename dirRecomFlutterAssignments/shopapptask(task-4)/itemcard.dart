import 'package:flutter/cupertino.dart';
import 'package:uifluttertask/products.dart';

class Itemcard extends StatelessWidget {
  final Product product;
  // final Function press;
  const Itemcard({Key? key, required this.product
      // , required this.press
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            // height: 180,
            // width: 180,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(product.image),
            // Image(image: NetworkImage('')), //or
            // Image(image: AssetImage(productlst[0].image)), //or
          ),
        ),
        Text(product.title),
        Text(
          '\$ ${
          // productlst[0].price.toString()             // or
          product.price}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
