import 'package:flutter/cupertino.dart';

class Product {
  final String productName;
  final String productPhoto;
  final double productPrice;
  final int productId;

  const Product(
      {@required this.productId,
      @required this.productName,
      @required this.productPrice,
      @required this.productPhoto});
}

const List<Product> productsRecomended = <Product>[
  Product(
    productId: 1,
    productName: 'Samsung Galaxy S20',
    productPhoto: 'assets/images/products/phone.jpg',
    productPrice: 2399.00,
  ),
  Product(
    productId: 2,
    productName: 'Apple MacBook Pro',
    productPhoto: 'assets/images/products/apple.jpg',
    productPrice: 5499.00,
  ),
  Product(
    productId: 3,
    productName: 'HP Neverstop',
    productPhoto: 'assets/images/products/printer.jpg',
    productPrice: 699.00,
  ),
  Product(
    productId: 4,
    productName: 'ASUS Zenbook',
    productPhoto: 'assets/images/products/laptop.jpg',
    productPrice: 3799.00,
  ),
  Product(
    productId: 5,
    productName: 'Lenovo X1 Carbon',
    productPhoto: 'assets/images/products/laptop2.jpg',
    productPrice: 9699.00,
  ),
];

List<Product> productsHits = [
  Product(
    productName: 'Lenovo X1 Carbon',
    productPhoto: 'assets/images/products/laptop2.jpg',
    productPrice: 9699.00,
  ),
  Product(
    productId: 4,
    productName: 'ASUS Zenbook',
    productPhoto: 'assets/images/products/laptop.jpg',
    productPrice: 3799.00,
  ),
  Product(
    productId: 2,
    productName: 'Apple MacBook Pro',
    productPhoto: 'assets/images/products/apple.jpg',
    productPrice: 5499.00,
  ),
  Product(
    productId: 3,
    productName: 'HP Neverstop',
    productPhoto: 'assets/images/products/printer.jpg',
    productPrice: 699.00,
  ),
  Product(
    productName: 'Samsung Galaxy S20',
    productPhoto: 'assets/images/products/phone.jpg',
    productPrice: 2399.00,
  ),
];

List<Product> productsBestsellers = [
  Product(
    productId: 3,
    productName: 'HP Neverstop',
    productPhoto: 'assets/images/products/printer.jpg',
    productPrice: 699.00,
  ),
  Product(
    productId: 1,
    productName: 'Samsung Galaxy S20',
    productPhoto: 'assets/images/products/phone.jpg',
    productPrice: 2399.00,
  ),
  Product(
    productId: 2,
    productName: 'Apple MacBook Pro',
    productPhoto: 'assets/images/products/apple.jpg',
    productPrice: 5499.00,
  ),
  Product(
    productId: 3,
    productName: 'HP Neverstop',
    productPhoto: 'assets/images/products/printer.jpg',
    productPrice: 699.00,
  ),
  Product(
    productId: 4,
    productName: 'ASUS Zenbook',
    productPhoto: 'assets/images/products/laptop.jpg',
    productPrice: 3799.00,
  ),
  Product(
    productId: 5,
    productName: 'Lenovo X1 Carbon',
    productPhoto: 'assets/images/products/laptop2.jpg',
    productPrice: 9699.00,
  ),
];

List<Product> productsLastViewed = [
  Product(
    productId: 2,
    productName: 'Apple MacBook Pro',
    productPhoto: 'assets/images/products/apple.jpg',
    productPrice: 5499.00,
  ),
  Product(
    productId: 1,
    productName: 'Samsung Galaxy S20',
    productPhoto: 'assets/images/products/phone.jpg',
    productPrice: 2399.00,
  ),
  Product(
    productId: 4,
    productName: 'ASUS Zenbook',
    productPhoto: 'assets/images/products/laptop.jpg',
    productPrice: 3799.00,
  ),
  Product(
    productId: 5,
    productName: 'Lenovo X1 Carbon',
    productPhoto: 'assets/images/products/laptop2.jpg',
    productPrice: 9699.00,
  ),
];
