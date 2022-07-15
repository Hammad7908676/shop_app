import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/blue_bear.png",
    title: "Blue Bunty",
    price: 300,
    description: productdescription,
    size: 12,
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    image: "assets/images/brown_bear.png",
    title: "Brown Bubblo",
    price: 700,
    description: productdescription,
    size: 20,
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    image: "assets/images/silver_cat.png",
    title: "Cattie",
    price: 500,
    description: productdescription,
    size: 15,
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    image: "assets/images/Tarzan.png",
    title: "The Tarzan",
    price: 850,
    description: productdescription,
    size: 22,
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    image: "assets/images/pink_bear.png",
    title: "Pinky Bella",
    price: 900,
    description: productdescription,
    size: 20,
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    image: "assets/images/silver_rabbit.png",
    title: "The Rabbit",
    price: 700,
    description: productdescription,
    size: 20,
    color: Color(0xFFAEAEAE),
  ),
];
String productdescription =
    "Hellow How Are You Hellow How Are You Hellow How Are You Hellow How Are You Hellow How Are You";
