import 'package:badges/badges.dart';
import 'package:beta_eats/model/foodmodel.dart';
import 'package:beta_eats/views/cart.dart';
import 'package:flutter/material.dart';

class Avail extends StatelessWidget {
  Avail({Key? key}) : super(key: key);

  List<Food> foodd = Foodpro().foods;
  List<Food> cartList = CartList;
  final snackBar = const SnackBar(
      content: Text("Added to Cart"), duration: Duration(milliseconds: 200));
  final snackBar2 = const SnackBar(
      content: Text("Removed from Cart"),
      duration: Duration(milliseconds: 200));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text(
          "Available Foods",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                  badgeContent: const Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  child:
                      const Icon(Icons.shopping_basket, color: Colors.white)),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: buildFoods(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildFoods(context) {
    List<Widget> list = [];
    for (var i = 0; i < foodd.length; i++) {
      list.add(Hero(
          tag: foodd[i].image ?? '',
          child: foodProperty(foodd[i], i, context)));
    }
    return list;
  }

  Widget foodProperty(Food food, int index, context) {
    return GestureDetector(
      onDoubleTap: () {
        if (cartList.contains(food)) {
          Foodpro().removefromcartlist(food);
          ScaffoldMessenger.of(context).showSnackBar(snackBar2);
        } else {
          Foodpro().addtocartlist(food);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 24),
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: food.image != null
                  ? Image.asset(
                      food.image!,
                      fit: BoxFit.cover,
                    ).image
                  : Image.network('').image,
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    food.name!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Price: ${food.price!}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
