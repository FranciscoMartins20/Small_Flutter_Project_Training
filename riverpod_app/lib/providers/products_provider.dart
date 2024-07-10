import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/models/product.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Produto 1',
    price: 100,
    image: 'assets/products/teste.jpg'
  ),
  Product(
    id: '2',
    title: 'Produto 2',
    price: 200,
    image: 'assets/products/medium.jpg'
  ),
  Product(
    id: '3',
    title: 'Produto 3',
    price: 300,
    image: 'assets/products/teste.jpg'
  ),
  Product(
    id: '4',
    title: 'Produto 4',
    price: 400,
    image: 'assets/products/medium.jpg'
  ),
  Product(
    id: '5',
    title: 'Produto 5',
    price: 500,
    image: 'assets/products/teste.jpg'
  ),
  Product(
    id: '6',
    title: 'Produto 6',
    price: 600,
    image: 'assets/products/medium.jpg'
  ),
  Product(
    id: '7',
    title: 'Produto 7',
    price: 700,
    image: 'assets/products/teste.jpg'
  ),
  Product(
    id: '8',
    title: 'Produto 8',
    price: 800,
    image: 'assets/products/medium.jpg'
  ),
];

final productsProvider = Provider<List<Product>>((ref) {
  return allProducts;
});

final reduceProductProvider = Provider<List<Product>>((ref) {
  return allProducts.where((p) => p.price < 500).toList();
});
