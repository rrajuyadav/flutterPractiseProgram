import 'package:project10d/test/cart_model_1.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

// creating database table
  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE cart (id INTEGER PRIMARY KEY AUTOINCREMENT , productId VARCHAR , productName TEXT , initialPrice INTEGER , productPrice INTEGER , quantity INTEGER ,  unitTag TEXT , image TEXT)');
    print('cart created!==============');
  }

// inserting data into the table
  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    final cartJson = cart.toJson();
    final cartRes = await dbClient!.query('cart',distinct: true,where: 'productId = ?', whereArgs: [cart.productId],limit: 1,);
    if(cartRes.isEmpty) {
      await dbClient!.insert('cart', cart.toJson());
    }else{
      await upDateQuantity(cart);
    }
    return cart;
  }

  // getting all the items in the list from the database

  Future<List<Cart>> getCartList() async {
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('cart');
    return queryResult.map((e) => Cart.fromJson(e)).toList();
  }

  Future<int> upDateQuantity(Cart cart) async {
    var dbClient = await db;
    return await dbClient!
        .update('cart', cart.toJson(), where: 'productId = ?', whereArgs: [cart.productId]);
  }

// deleting an item from the cart screen

  Future<int> delete(String productId) async {
    var dbClient = await db;
    return await dbClient!.delete('cart', where: 'productId = ?', whereArgs: [productId]);

  }

}
