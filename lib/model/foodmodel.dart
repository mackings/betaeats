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
      image: 'assets/jollofrice.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Food(
      name: 'Cake2',
      image: 'assets/cake2.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 300,
    ),
    Food(
      name: 'Chicken',
      image: 'assets/chicken.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 400,
    ),
    Food(
      name: 'Roll',
      image: 'assets/roll.jpg',
      description:
          'Roll is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 500,
    ),
    Food(
      name: 'Rice',
      image: 'assets/rice.png',
      description:
          'Rice is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 600,
    ),
    Food(
      name: 'Snacks',
      image: 'assets/snacks.jpg',
      description: 'Sugar is a type',
      price: 600,
    ),
    Food(
      name: 'Pizza',
      image: 'assets/pizza.jpeg',
      description:
          'pizza are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 700,
    ),
    Food(
      name: 'Fufu',
      image: 'assets/fufu.jpg',
      description:
          'fufu are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 300,
    ),
    Food(
      name: 'Pie',
      image: 'assets/pie.jpg',
      description:
          'pie are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Food(
      name: 'Noodles',
      image: 'assets/noodles.jpeg',
      description:
          'noodles are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 300,
    ),
    Food(
      name: 'Ofada',
      image: 'assets/ofada.jpg',
      description:
          'Ofada are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Food(
      name: 'sandwish',
      image: 'assets/sandwish.jpg',
      description:
          'sandwish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
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
