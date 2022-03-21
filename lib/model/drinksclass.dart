import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


class Drinks {
  final String? name;
  final String? image;
  final String? description;
  final int? price;

  Drinks({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Drinks.fromJson(Map<String, dynamic> json) {
    return Drinks(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
    );
  }
}


List<Drinks> Drinkslist = [];

class Drinksfood extends ChangeNotifier {
  final List<Drinks> foods = [
    Drinks(
      name: 'Chivita',
      image: 'assets/chivita.png',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1000,
    ),
    Drinks(
      name: 'Pepsi',
      image: 'assets/pepsi.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Drinks(
      name: 'Coca Cola',
      image: 'assets/coke.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 300,
    ),
    Drinks(
      name: 'Malt',
      image: 'assets/malt.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1200,
    ),
   
  ];

 addToCart(Drinks food) {
    Drinkslist.add(food);
    notifyListeners();
  }

  removeFromCart(Drinks food) {
    Drinkslist.remove(food);
    notifyListeners();
  }
}