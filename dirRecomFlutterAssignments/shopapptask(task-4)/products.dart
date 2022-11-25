import 'package:flutter/material.dart';

class Product{
  final String image,title,desriptions;
  final int price,size,id;
  final Color color;
  Product(
  {
    required this.image,
    required this.title,
    required this.desriptions,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
}
      );
}

List<Product> productlst=[
  Product(
      id:1,
      image:'assets/handbag1.jpg',
      title:'creambag',
      desriptions:'sometext',
      price:100,
      size:10,
      color:Color(0x81f3e5b8),
  ),
  Product(
    id:2,
    image:'assets/handbag2.jpg',
    title:'lredbag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xe0fa4454),
  ),Product(
    id:3,
    image:'assets/handbag3.jpg',
    title:'whitebag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xfffdfafa),
  ),Product(
    id:4,
    image:'assets/handbag4.jpg',
    title:'skybluebag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xff23b6b6),
  ),Product(
    id:5,
    image:'assets/handbag5.jpg',
    title:'pinkbag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xfff3a4bd),
  ),Product(
    id:6,
    image:'assets/handbag6.jpg',
    title:'bluebag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xff1f3aa2),
  ),Product(
    id:7,
    image:'assets/handbag7.jpg',
    title:'marronbag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0xff790A27),
  ),Product(
    id:8,
    image:'assets/handbag8.jpg',
    title:'goldenbag',
    desriptions:'sometext',
    price:100,
    size:10,
    color:Color(0x6ffac911),
  ),
];


