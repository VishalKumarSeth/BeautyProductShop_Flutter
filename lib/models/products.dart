import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/item_1.png',
    title: 'Facial Cleanser',
    description: 'Cleaning super agents',
    price: 234,
    size: 120,
    id: 1,
    color: const Color.fromRGBO(184, 116, 126, 1),
  ),
  Product(
    image: 'assets/images/item_2.png',
    title: 'Moisturiser',
    description: 'Signature oil',
    price: 310,
    size: 250,
    id: 2,
    color: const Color.fromRGBO(36, 87, 107, 1),
  ),
  Product(
    image: 'assets/images/item_3.png',
    title: 'Micellar Cleansing',
    description: 'Citrus refreshes senses',
    price: 350,
    size: 150,
    id: 3,
    color: const Color.fromRGBO(202, 152, 147, 1),
  ),
  Product(
    image: 'assets/images/item_4.png',
    title: 'Cleanising Oil',
    description: 'Oil balancing mask',
    price: 350,
    size: 100,
    id: 4,
    color: const Color.fromRGBO(235, 218, 222, 1),
  ),
  Product(
    image: 'assets/images/item_5.png',
    title: 'Facial Scrubber',
    description: 'Signature water',
    price: 475,
    size: 300,
    id: 5,
    color: const Color.fromRGBO(69, 116, 154, 1),
  ),
  Product(
    image: 'assets/images/item_6.png',
    title: 'Facial Toning Cream',
    description: 'Super greens',
    price: 550,
    size: 350,
    id: 6,
    color: const Color.fromRGBO(41, 48, 74, 1),
  ),
];
