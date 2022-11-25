import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project10d/cart_screen.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';
import 'cart_provider.dart';
import 'db_helper.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  DBHelper? dbHelper = DBHelper();

  List<String> productName = ["Kadai_Paneer_Gravy", "Palak_Paneer", "Mix_Vegetable_Kofta", "Chole", "Matar_Paneer","Dum_Aloo"];
  List<String> productUnit = ["1pac", "1pac", "1pac", "1pac", "1pac","1pac"];
  List<int> productPrice = [10, 20, 30, 40, 50,60];
  List<String> productImage = [
    "assets/image/veg_curry/Kadai_Paneer_Gravy.png",
    "assets/image/veg_curry/Palak_Paneer.png",
    "assets/image/veg_curry/Mix_Vegetable_Kofta.png",
    "assets/image/veg_curry/Chole.png",
    "assets/image/veg_curry/Matar_Paneer.png",
    "assets/image/veg_curry/Dum_Aloo.png",
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("appbar"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: Center(
              child: Badge(
                badgeContent:
                    Consumer<CartProvider>(builder: (context, value, child) {
                  return Text(
                    value.getCounter().toString(),
                    style: const TextStyle(color: Colors.white),
                  );
                }),
                animationDuration: const Duration(milliseconds: 200),
                // animationType: BadgeAnimationType.slide,
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          const Text(
            "data",
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: productImage.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                productImage[index],
                                height: 60,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(productName[index].toString()),
                                    Text(
                                        "${productUnit[index]}  \$${productPrice[index]}"),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: () {
                                            // print(index);
                                            // print(index);
                                            // print(
                                            //     productName[index].toString());
                                            // print(
                                            //     productPrice[index].toString());
                                            // print('1');
                                            // print(
                                            //     productUnit[index].toString());
                                            // print(
                                            //     productImage[index].toString());

                                            dbHelper!
                                                .insert(Cart(
                                                    id: index,
                                                    productId: index.toString(),
                                                    productName:
                                                        productName[index]
                                                            .toString(),
                                                    initialPrice:
                                                        productPrice[index],
                                                    productPrice:
                                                        productPrice[index],
                                                    quantity: 1,
                                                    unitTag: productUnit[index]
                                                        .toString(),
                                                    image: productImage[index]
                                                        .toString()))
                                                .then((value) {
                                              print(
                                                  "product is added Successfully to the cart.");
                                              cart.addTotalPrice(double.parse(
                                                  productPrice[index]
                                                      .toString()));
                                              cart.addCounter();
                                            }).onError((error, stackTrace) {
                                              print(
                                                  "product is not added  Successfully to the cart.");
                                              print(error.toString());
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 100,
                                            color: Colors.green,
                                            child: const Text("Add to Cart"),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  })),

        ],
      ),
    );
  }
}

