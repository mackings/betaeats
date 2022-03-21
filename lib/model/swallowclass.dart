import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


class Swallow {
  final String? name;
  final String? image;
  final String? description;
  final int? price;

  Swallow({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Swallow.fromJson(Map<String, dynamic> json) {
    return Swallow(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
    );
  }
}


List<Swallow> Swallowlist = [];

class Swallowfood extends ChangeNotifier {
  final List<Swallow> foods = [
    Swallow(
      name: 'Iyan',
      image: 'assets/iyan.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 2000,
    ),
    Swallow(
      name: 'Amala',
      image: 'assets/amala.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 1000,
    ),
    Swallow(
      name: 'semo',
      image: 'assets/semo.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1500,
    ),
    Swallow(
      name: 'Akpu',
      image: 'assets/fufu.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1200,
    ),
   
  ];

 addToCart(Swallow food) {
  Swallowlist.add(food);
    notifyListeners();
  }

  removeFromCart(Swallow food) {
    Swallowlist.remove(food);
    notifyListeners();
  }
}