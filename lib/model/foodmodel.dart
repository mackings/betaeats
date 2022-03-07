import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class Food {
  final String? name;
  final String? image;
  final String? description;
  final int? price;

  Food({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
    );
  }
}

List<Food> CartList = [];

class Foodpro extends ChangeNotifier {
  final List<Food> foods = [
    Food(
      name: 'Chicken',
      image: 'assets/jollof.png',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 100,
    ),
    Food(
      name: 'Fish',
      image: 'assets/jollofricejpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Food(
      name: 'Mutton',
      image: 'assets/rice.png',
      description:
          'Mutton is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 300,
    ),
    Food(
      name: 'Egg',
      image: 'assets/sandw.png',
      description:
          'Egg is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 400,
    ),
    Food(
      name: 'Milk',
      image: 'assets/images/milk.jpg',
      description:
          'Milk is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 500,
    ),
    Food(
      name: 'Rice',
      image: 'assets/images/rice.jpg',
      description:
          'Rice is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 600,
    ),
    Food(
      name: 'Sugar',
      image: 'assets/images/sugar.jpg',
      description: 'Sugar is a type',
      price: 600,
    )
  ];

  addfood(Food food) {
    foods.add(food);
    notifyListeners();
  }

  removefood(Food food) {
    foods.remove(food);
    notifyListeners();
  }

  /// for adding food to cart
  addtocartlist(Food food) {
    CartList.add(food);
    notifyListeners();
  }

//// for removing food from cart
  removefromcartlist(Food food) {
    CartList.remove(food);
    notifyListeners();
  }
}

class mealist extends ChangeNotifier {
  List Mealists = [];

  void addmeal(Food food) {
    Mealists.add(food);
    notifyListeners();
  }

  void removemeal(Food food) {
    Mealists.remove(food);
    notifyListeners();
  }
}

final mealsprovider = ChangeNotifierProvider((ref) => mealist());
