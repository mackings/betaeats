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

class Foodpro extends ChangeNotifier {
  var CartList = [];

  final List<Food> foods = [
    Food(
      name: 'Chicken',
      image: 'assets/images/chicken.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 100,
    ),
    Food(
      name: 'Fish',
      image: 'assets/images/fish.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    Food(
      name: 'Mutton',
      image: 'assets/images/mutton.jpg',
      description:
          'Mutton is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 300,
    ),
    Food(
      name: 'Egg',
      image: 'assets/images/egg.jpg',
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


  addtocartlist(Food food) {
    CartList.add(food);
    notifyListeners();
  }

  removefromcartlist(Food food) {
    CartList.remove(food);
    notifyListeners();
  }






}



class mealist extends ChangeNotifier{

 List Mealists = [];

 void addmeal(Food food){
   Mealists.add(food);
   notifyListeners();
 }

  void removemeal(Food food){
    Mealists.remove(food);
    notifyListeners();
  }




}

final mealsprovider = ChangeNotifierProvider((ref) => mealist());
