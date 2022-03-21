import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


class avfoods {
  String?  name;
  String?  image;
  String?  description;
  int?  price;


  avfoods({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory avfoods.fromJson(Map<String, dynamic> json) {
    return avfoods(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
    );
  }

}


List<avfoods> CartList = [];


class Avfoodspro extends ChangeNotifier {
  final List<avfoods> foodlist = [
    avfoods(
      name: 'Chicken',
      image: 'assets/jollof.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 4500,
    ),
     avfoods(
      name: 'Amala',
      image: 'assets/amala.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1200,
    ),
    avfoods(
      name: 'Cocoanut Rice',
      image: 'assets/cocoanut.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 200,
    ),
    avfoods(
      name: 'Cakes',
      image: 'assets/cake2.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 900,
    ),
    avfoods(
      name: 'Chicken',
      image: 'assets/chicken.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 4000,
    ),

    avfoods(
      name: 'Semo',
      image: 'assets/semo.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1500,
    ),
     avfoods(
      name: 'jollof Rice',
      image: 'assets/jollof.png',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1000,
    ),
    avfoods(
      name: 'Semo and Egusi',
      image: 'assets/jollofrice.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price:3000,
    ),
    avfoods(
      name: 'Pouno Yam',
      image: 'assets/cake2.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 5500,
    ),
    avfoods(
      name: 'Amala',
      image: 'assets/chicken.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1500,
    ),
    avfoods(
      name: 'Pepsi',
      image: 'assets/jollof.png',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 500,
    ),
    avfoods(
      name: 'Coca Cola',
      image: 'assets/jollofrice.jpg',
      description:
          'Fish are a diverse and widespread group of aquatic, gill-bearing aquatic craniate animals. They range in size from very small, such as the carp, to very large, such as the Great White shark.',
      price: 500,
    ),
    avfoods(
      name: 'Noodles',
      image: 'assets/noodles.jpeg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1000,
    ),
    avfoods(
      name: 'Pie',
      image: 'assets/pie.jpg',
      description:
          'Cake is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 1500,
    ),
    avfoods(
      name: 'Chicken',
      image: 'assets/chicken.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 900,
    ),
    avfoods(
      name: 'Roll',
      image: 'assets/roll.jpg',
      description:
          'Chicken is a type of bird in the family of gallinaceous birds. It is a domesticated species and is the most widely domesticated bird in the world.',
      price: 500,
    ),
  ];

  addtocart(avfoods food) {
    CartList.add(food);
    notifyListeners();
  }

  removefromcart(avfoods food) {
    CartList.remove(food);
    notifyListeners();
  }

}


//Rice Class





