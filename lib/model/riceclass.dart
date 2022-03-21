import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


class Rice {
  final String? name;
  final String? image;
  final String? description;
  final int? price;

  Rice({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Rice.fromJson(Map<String, dynamic> json) {
    return Rice(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
    );
  }
}


List<Rice> Ricelist = [];

class Ricefood extends ChangeNotifier {
  final List<Rice> foods = [
    Rice(
      name: 'Jollof Rice',
      image: 'assets/jollof.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 2000,
    ),
    Rice(
      name: 'Fried Rice',
      image: 'assets/jollofrice.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Rice(
      name: 'Coconuts',
      image: 'assets/cocoanut.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 300,
    ),
    Rice(
      name: 'Chinese Rice',
      image: 'assets/chinese.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1200,
    ),
   
  ];

 addToCart(Rice food) {
    Ricelist.add(food);
    notifyListeners();
  }

  removeFromCart(Rice food) {
    Ricelist.remove(food);
    notifyListeners();
  }
}