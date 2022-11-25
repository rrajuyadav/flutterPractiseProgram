

import 'package:json_annotation/json_annotation.dart';
part 'cakeclass.g.dart';



@JsonSerializable()
class Cakeclass{
 final Items? items;

  Cakeclass(this.items);

  factory Cakeclass.fromJson(Map<String,dynamic> json)=>_$CakeclassFromJson(json);
  Map<String,dynamic> toJson()=>_$CakeclassToJson(this);


}


@JsonSerializable()
class Items {
 final List<Item>? item;

  Items(this.item);
  factory Items.fromJson(Map<String,dynamic> json)=>_$ItemsFromJson(json);
  Map<String, dynamic> toJson()=>_$ItemsToJson(this);// Deserializable;
}


@JsonSerializable()
class Item {
  final String? id;
  final String? type;
  final String? name;
  final double? ppu;
  final Batters? batters;
  final List<Batter>? topping;

  Item(this.id, this.type, this.name, this.ppu, this.batters, this.topping);

  factory Item.fromJson(Map<String,dynamic> json)=>_$ItemFromJson(json);
  Map<String, dynamic> toJson()=>_$ItemToJson(this);//
}



@JsonSerializable()
class Batters {
  final List<Batter>? batter;

  Batters(this.batter);

  factory Batters.fromJson(Map<String,dynamic> json)=>_$BattersFromJson(json);
  Map<String, dynamic> toJson()=>_$BattersToJson(this);//
}



@JsonSerializable()
class Batter {
  final String? id;
  final String? type;

  @override
  String toString() => "$type $id";

  Batter(this.id, this.type);
  factory Batter.fromJson(Map<String,dynamic> json)=>_$BatterFromJson(json);
  Map<String, dynamic> toJson()=>_$BatterToJson(this);//
}


// @JsonSerializable()
// class Topping {
//   String? id;
//   String? type;
//   Topping(this.id, this.type);
//   factory Topping.fromJson(Map<String,dynamic> json)=>_$ToppingFromJson(json);
//   Map<String, dynamic> toJson()=>_$ToppingToJson(this);//
//
// }