import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project10d/test/cart_model_1.dart';
import 'package:project10d/test/cart_provider_1.dart';
import 'package:project10d/test/cart_screen_1.dart';
import 'package:project10d/test/db_helper_1.dart';
import 'package:provider/provider.dart';

class ProScreen extends StatefulWidget {
  const ProScreen({Key? key}) : super(key: key);

  @override
  State<ProScreen> createState() => _ProScreenState();
}

class _ProScreenState extends State<ProScreen> {
  @override
  void initState() {
    super.initState();
    // context.read<CartProvider_1>().loadJsonData();
    //
    // context.watch<CartProvider_1>().loadJsonData();

    jsonListOfData.loadJsonData();

  }



  DBHelper? dbHelper = DBHelper();

  CartProvider_1 jsonListOfData = CartProvider_1();

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<CartProvider_1>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("GoldenRestaurant"),
        centerTitle: true,
        actions: [
          // TextButton(
          //     onPressed: () => context.watch<CartProvider_1>().loadJsonData(),
          //     child: const Text(
          //       "data",
          //       style: TextStyle(color: Colors.red),
          //     )),
          TextButton(
            onPressed: () => {
              setState(() {
                jsonListOfData.loadJsonData();
              })
            },
            child: const Icon(
              Icons.star,
              color: Colors.red,
            ),
          ),

          // ElevatedButton(
          //       onPressed: () {
          //         context.read<CartProvider_1>().loadJsonData();
          //
          //       },
          //       child: const Text("hello123"),
          //     ),

          // Consumer<CartProvider_1>(
          //   builder: (context, value, child) {
          //     return ElevatedButton(
          //       onPressed: () {
          //         value.loadJsonData().toString();
          //       },
          //       child: const Text("hello"),
          //     );
          //   },
          // ),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: Center(
              child: Badge(
                badgeContent:
                    Consumer<CartProvider_1>(builder: (context, value, child) {
                  return Text(
                    value.counter.toString(),
                    style: const TextStyle(color: Colors.white),
                  );
                }),
                animationDuration: const Duration(milliseconds: 100),
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              "Welcome To Golden Restaurant",
              style: TextStyle(
                  color: Color(0xffa20303),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,height: 1.2),
            ),
            const Image(image: AssetImage("assets/res_pic_5.png")),

            const Padding(
              padding:  EdgeInsets.only(top: 10,bottom: 10),
              child:  Text(
                "Select your dish from the below given list of food items",
                style: TextStyle(
                    color: Color(0xffa20303),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: jsonListOfData.dataa?.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  jsonListOfData.dataa?[index].image
                                          .toString() ??
                                      "",
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(jsonListOfData
                                              .dataa?[index].productName
                                              .toString() ??
                                          ""),
                                      Text(
                                          "${jsonListOfData.dataa?[index].unitTag}  \$${jsonListOfData.dataa?[index].productPrice}"),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: () {
                                              // cart.insertOrUpdateItem(
                                              //     cart.cart[index].increaseQuantity()
                                              // );            //=================================not needed
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

                                              cart.insertOrUpdateItem(
                                                Cart(
                                                    productId: jsonListOfData
                                                        .dataa?[index]
                                                        .productId,
                                                    productName: jsonListOfData
                                                        .dataa?[index]
                                                        .productName
                                                        .toString(),
                                                    initialPrice: jsonListOfData
                                                        .dataa?[index]
                                                        .initialPrice,
                                                    productPrice: jsonListOfData
                                                        .dataa?[index]
                                                        .productPrice,
                                                    quantity: 1,
                                                    unitTag: jsonListOfData
                                                        .dataa?[index].unitTag
                                                        .toString(),
                                                    image: jsonListOfData
                                                        .dataa?[index].image
                                                        .toString()),
                                              );
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 100,
                                              color: const Color(0xffe8b229),
                                              child: const Center(
                                                  child: Text("Add to Cart")),
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
      ),
    );
  }
}
