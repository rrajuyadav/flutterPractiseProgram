import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project10d/test/cart_model_1.dart';
import 'package:project10d/test/db_helper_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider_1 with ChangeNotifier {
  DBHelper db = DBHelper();

  int get counter => cart.isEmpty? 0: cart.map((e) => e.quantity?? 0).reduce((value, element) => value + element );
  double get totalPrice => cart.isEmpty? 0: cart.map((e) => (e.quantity?? 0) * (e.productPrice?? 0)).reduce((value, element) => value + element ).toDouble();

  int _quantity = 1;
  int get quantity => _quantity;

  double _totalPrice = 0.0;


  List<Cart> cart = [];

  CartProvider_1(){
    getData();
  }


  Future<List<Cart>> getData() async {
    cart = await db.getCartList();
    notifyListeners();
    return cart;
  }

  void deleteItem(int index) async{
    await db.delete(cart[index].productId!);
    await getData();
    notifyListeners();
  }

  void insertOrUpdateItem(Cart cart) async{
    await db.insert(cart);
    await getData();
    notifyListeners();

  }

  void _setPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("item_quantity", _quantity);
    prefs.setDouble("total_price", _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _quantity = prefs.getInt("item_quantity") ?? 0;
    _totalPrice = prefs.getDouble("total_price") ?? 0.0;
    notifyListeners();
  }

//========================priceCounter================
  void addCounter() {

    _setPrefItems();
    notifyListeners();
  }

  void removeCounter() {
    _setPrefItems();
    notifyListeners();
  }


  //========================totalPriceCounter================
  void addTotalPrice(double productPrice) {
    _totalPrice = _totalPrice + productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice = _totalPrice - productPrice;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice() {
    _totalPrice;
    _getPrefItems();
    return _totalPrice;
  }
//=====================================

  List<Cart>? _dataa = []; //when the list of object doesn't have name  {[....]}
  List<Cart>? get dataa => _dataa;

  Future<List<Cart>?> loadJsonData() async {
    final String jsonText =
        await rootBundle.loadString("assets/currylistitems.json");
    final newData = json.decode(jsonText);

    _dataa = List<Cart>.from(newData.map((model) => Cart.fromJson(model)));

    print(_dataa?[0].productName);
    return _dataa;
  }
}
