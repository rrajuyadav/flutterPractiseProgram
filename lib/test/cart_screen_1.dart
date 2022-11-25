import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project10d/test/cart_model_1.dart';
import 'package:project10d/test/cart_provider_1.dart';
import 'package:project10d/test/db_helper_1.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DBHelper? dbHelper = DBHelper();

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<CartProvider_1>().getData();
  // }

  CartProvider_1 a = CartProvider_1();
  @override
  Widget build(BuildContext context) {
    // print("+++++++++++++${a.totalPrice}=========================");
    final cart = Provider.of<CartProvider_1>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Food Items"),
        centerTitle: true,
        actions: [
          Center(
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
            if (cart.cart.isEmpty)
              Column(
                children: const [
                  Text("cart is emptyy"),
                  Image(image: AssetImage("assets/img_5.png")),
                ],
              )
            else
              Expanded(
                  child: ListView.builder(
                      itemCount: cart.cart.length,
                      itemBuilder: (ctx, index) {
                        final cartItem = cart.cart[index];
                        return Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    cartItem.image.toString(),
                                    height: 80,
                                    width: 80,
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(cartItem.productName
                                                .toString()),
                                            IconButton(
                                                onPressed: () {
                                                  // dbHelper!.delete(cartItem.productId!);
                                                  cart.deleteItem(index);
                                                },
                                                icon: const Icon(Icons.delete))
                                          ],
                                        ),
                                        Text(
                                            "1 ${cartItem.unitTag}  \$${cartItem.initialPrice}"),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // Text("${cartItem.quantity} pac : \$${cartItem.productPrice.toString()}"),

                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: 30,
                                                width: 100,
                                                color: Colors.green,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          if (cartItem
                                                                  .quantity! >
                                                              1) {
                                                            cart.insertOrUpdateItem(
                                                                cartItem
                                                                    .decreaseQuantity());
                                                          } else {
                                                            cart.deleteItem(
                                                                index);
                                                          }
                                                        },
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        cartItem.quantity
                                                            .toString(),
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xffffffff),
                                                            fontSize: 16),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          print(
                                                              "${cartItem.increaseQuantity()}+++++++++++===============");

                                                          cart.insertOrUpdateItem(
                                                              cartItem
                                                                  .increaseQuantity());
                                                        },
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
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
                              ),
                            ],
                          ),
                        );
                      })),
            Consumer<CartProvider_1>(builder: (context, value, child) {
              // print("llllllllllllllllllllll${value.getTotalPrice().toString()}");
              // print(a.totalPrice);
              return Visibility(
                visible: value.totalPrice.toStringAsFixed(2) == "0.00"
                    ? false
                    : true,
                child: Column(
                  children: [
                    ReusableWidget(
                        title: "Total",
                        value: r'$' + value.totalPrice.toString()),
                    ReusableWidget(
                        title: "Discount 10%",
                        value: r'$' +
                            ((((value.totalPrice * 10) / 100)
                                .toStringAsFixed(2)))),
                    ReusableWidget(
                        title: "Discountedf Price ",
                        value: r'$' +
                            (value.totalPrice - ((value.totalPrice * 10) / 100))
                                .toStringAsFixed(2)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextButton(
                          onPressed: () {
                            var snackBar = SnackBar(

                              backgroundColor: Color(0xffdce396),

                              content: RichText(
                                text: const TextSpan(
                                    text: "Thank you for placing an order\n",
                                    style: TextStyle(
                                        color: Color(0xff915803), fontSize: 18,fontWeight: FontWeight.w600),
                                    children: [
                                      TextSpan(
                                          text:
                                              "You will get your food within a few minutes.",

                                          style: TextStyle(
                                              color: Color(0xff4f2929),
                                              fontSize: 15,fontWeight: FontWeight.w500))
                                    ]),
                              ),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Navigator.pop(context);

                                  // Some code to undo the change.
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.purple,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  "Place Order",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 22),
                                ),
                              ))),
                    ),
                  ],
                ),
              );
            }),
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
