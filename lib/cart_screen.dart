import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project10d/cart_provider.dart';
import 'package:project10d/db_helper.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("appbar"),
        centerTitle: true,
        actions: [
          Center(
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
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: cart.getData(),
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    if(snapshot.data!.isEmpty){
                    return Column(
                      children: const [
                        Text("cart is emptyy"),
                        Image(image: AssetImage("assets/image/img_5.png")),

                      ],
                    );
                    }else{
                      return Expanded(
                          child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (ctx, index) {
                                return Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            snapshot.data![index].image.toString(),
                                            height: 60,
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                           Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Text(snapshot
                                                        .data![index].productName
                                                        .toString()),
                                                    IconButton(
                                                        onPressed: () {
                                                          dbHelper!.delete(snapshot
                                                              .data![index].id!);
                                                          cart.removeCounter();
                                                          cart.removeTotalPrice(
                                                              double.parse(snapshot
                                                                  .data![index]
                                                                  .productPrice
                                                                  .toString()));
                                                        },
                                                        icon: const Icon(
                                                            Icons.delete))
                                                  ],
                                                ),
                                                Text(
                                                    "${snapshot.data![index].unitTag}  \$${snapshot.data![index].productPrice}"),
                                                Align(
                                                    alignment:
                                                    Alignment.centerRight,
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        height: 30,
                                                        width: 100,
                                                        color: Colors.green,
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  int quantity =
                                                                  snapshot
                                                                      .data![
                                                                  index]
                                                                      .quantity!;
                                                                  int price = snapshot
                                                                      .data![index]
                                                                      .initialPrice!;
                                                                  quantity--;
                                                                  int? newPrice =
                                                                      price *
                                                                          quantity;

                                                                  if (quantity >
                                                                      0) {
                                                                    dbHelper!
                                                                        .upDateQuantity(Cart(
                                                                        id: snapshot
                                                                            .data![
                                                                        index]
                                                                            .id!,
                                                                        productId: snapshot
                                                                            .data![
                                                                        index]
                                                                            .id!
                                                                            .toString(),
                                                                        productName: snapshot
                                                                            .data![
                                                                        index]
                                                                            .productName!,
                                                                        initialPrice: snapshot
                                                                            .data![
                                                                        index]
                                                                            .initialPrice!,
                                                                        productPrice:
                                                                        newPrice,
                                                                        quantity:
                                                                        quantity,
                                                                        unitTag: snapshot
                                                                            .data![
                                                                        index]
                                                                            .unitTag!
                                                                            .toString(),
                                                                        image: snapshot
                                                                            .data![
                                                                        index]
                                                                            .image!
                                                                            .toString()))
                                                                        .then(
                                                                            (value) {
                                                                          newPrice = 0;
                                                                          quantity = 0;
                                                                          cart.removeTotalPrice(double.parse(snapshot
                                                                              .data![
                                                                          index]
                                                                              .initialPrice!
                                                                              .toString()));
                                                                        }).onError((error,
                                                                        stackTrace) {
                                                                      print(error
                                                                          .toString());
                                                                    });
                                                                  }
                                                                },
                                                                child: const Icon(
                                                                  Icons.remove,
                                                                  color:
                                                                  Colors.white,
                                                                ),
                                                              ),
                                                              Text(
                                                                snapshot
                                                                    .data![index]
                                                                    .quantity
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    color: Color(
                                                                        0xffffffff),
                                                                    fontSize: 16),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  int quantity =
                                                                  snapshot
                                                                      .data![
                                                                  index]
                                                                      .quantity!;
                                                                  int price = snapshot
                                                                      .data![index]
                                                                      .initialPrice!;
                                                                  quantity++;
                                                                  int? newPrice =
                                                                      price * quantity;

                                                                  dbHelper!
                                                                      .upDateQuantity(Cart(
                                                                      id: snapshot
                                                                          .data![
                                                                      index]
                                                                          .id!,
                                                                      productId: snapshot
                                                                          .data![
                                                                      index]
                                                                          .id!
                                                                          .toString(),
                                                                      productName: snapshot
                                                                          .data![
                                                                      index]
                                                                          .productName!,
                                                                      initialPrice: snapshot
                                                                          .data![
                                                                      index]
                                                                          .initialPrice!,
                                                                      productPrice:
                                                                      newPrice,
                                                                      quantity:
                                                                      quantity,
                                                                      unitTag: snapshot
                                                                          .data![
                                                                      index]
                                                                          .unitTag!
                                                                          .toString(),
                                                                      image: snapshot
                                                                          .data![
                                                                      index]
                                                                          .image!
                                                                          .toString()))
                                                                      .then(
                                                                          (value) {
                                                                        newPrice = 0;
                                                                        quantity = 0;
                                                                        cart.addTotalPrice(
                                                                            double.parse(snapshot
                                                                                .data![
                                                                            index]
                                                                                .initialPrice!
                                                                                .toString()));
                                                                      }).onError((error,
                                                                      stackTrace) {
                                                                    print(error
                                                                        .toString());
                                                                  });
                                                                },
                                                                child: const Icon(
                                                                  Icons.add,
                                                                  color:
                                                                  Colors.white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                              }));
                    }

                  }

                  return const Text('');
                }),
            Consumer<CartProvider>(


        builder: (context, value, child) {
              return Visibility(
                visible: value.getTotalPrice().toStringAsFixed(2) == "0.00"
                    ? false
                    : true,
                child: Column(
                  children: [
                    ReusableWidget(title: "Total", value: r'$' + value.getTotalPrice().toStringAsFixed(2)),
                     ReusableWidget(title: "Discount 10%", value: r'$' + ((((value.getTotalPrice() * 10) / 100).toStringAsFixed(2)))),
                    ReusableWidget(title: "sub_total", value: r'$' + (value.getTotalPrice() - ((value.getTotalPrice() * 10) / 100)).toStringAsFixed(2)),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title, value;

  const ReusableWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(value, style: Theme.of(context).textTheme.subtitle2),
        ],
      ),
    );
  }
}
