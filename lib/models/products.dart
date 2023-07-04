import 'package:flutter/material.dart';


class Product {
  final String index;
  final String name;
  final double price;
  final String imageUrl;

  Product({

    required this.name,
    required  this.index,
    required this.price,
    required this.imageUrl,
  });
}

//static data; you can get it from your API
List<Product> products = [
  Product(
    name: "Burrito",
    imageUrl: 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg',
    price: 1.99,
    index: '1',
  ),
  Product(
    name: "Burger",
    imageUrl: 'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg',
    price: 1.99,
    index: '2',
  ),
  Product(
    name: "Pizza",
    imageUrl: 'https://images.pexels.com/photos/1146760/pexels-photo-1146760.jpeg',
    price: 1.99,
    index: '3',
  ),
  Product(
    name: "Ice Cream",
    imageUrl: 'https://images.pexels.com/photos/1978181/pexels-photo-1978181.jpeg',
    price:  3.99,
    index: '4',
  ),
  Product(
    name: "Strawberry",
    imageUrl: 'https://www.pexels.com/photo/close-up-photo-of-a-burrito-461198/',
    price: 2.99,
    index: '5',
  ),
  Product(
    name: "Watermelon",
    imageUrl: 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg',
    price: 3.99,
    index: '6',
  ),
  Product(
    name: "Apple",
    imageUrl: 'https://www.pexels.com/photo/close-up-photo-of-a-burrito-461198/',
    price: 0.99,
    index: '7',
  ),
  Product(
    name: "Avocado",
    imageUrl: 'https://www.pexels.com/photo/close-up-photo-of-a-burrito-461198/',
    price: 4.99,
    index: '8',
  ),

];