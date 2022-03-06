import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beta_eats/model/foodmodel.dart';

var foodc = StateProvider<String>((ref) => ' Kadigat Foods');
var foodcart = StateProvider<List<Food>>((ref) => []);

class Foodlist extends ChangeNotifier {

 
List<Food> addedFoods = [];

  void addFood(Food food) {
    addedFoods.add(food);
    notifyListeners();
  }

  void removeFood(Food food) {
    addedFoods.remove(food);
    notifyListeners();
  }

  void clearFood() {
    addedFoods.clear();
    notifyListeners();
  }


}
