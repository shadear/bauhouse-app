import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({
    required this.name,
    required this.companyName,
    required this.image,
    required this.price,
    required this.isOnSale,
  });

  final String name;
  final String companyName;
  final String image;
  final double price;
  final bool isOnSale;

  @override
  List<Object?> get props => [image, isOnSale, name, price];

  static List<Product> products = const [
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
    Product(
      name: 'Red Brick',
      companyName: 'Main Brick Company',
      image: 'https://picsum.photos/200',
      price: 23,
      isOnSale: false,
    ),
  ];
}
