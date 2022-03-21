import 'package:beta_eats/model/bmodel.dart';
import 'package:beta_eats/providers/providers.dart';
import 'package:beta_eats/views/Ricepage.dart';
import 'package:beta_eats/views/bcart.dart';
import 'package:beta_eats/views/dasboard.dart';
import 'package:beta_eats/views/swallowpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:beta_eats/Auths/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beta_eats/model/bmodel.dart';
import 'package:badges/badges.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<avfoods> foodies = Avfoodspro().foodlist;
  List<avfoods> cartList = CartList;
  final addsnack = const SnackBar(
      content: Text("Added to Cart"), duration: Duration(milliseconds: 200));

  final removesnack = const SnackBar(
      content: Text("Removed from Cart"),
      duration: Duration(milliseconds: 200));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 133, 36, 1),
        title: Text(
          'Popular Foods',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashbord()),
              );
            },
            icon: Icon(Icons.dashboard),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Bcart()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: buildList(context),
            scrollDirection: Axis.vertical,
          )),
        ],
      ),
    );
  }

  List<Widget> buildList(context) {
    List<Widget> list = [];

    for (var i = 0; i < foodies.length; i++) {
      list.add(Hero(
          tag: foodies[i].image ?? '',
          child: AVfoodproperty(foodies[i], i, context)));
    }

    return list;
  }

  Container AVfoodproperty(avfoods food, int index, context) {
    return Container(
      height: MediaQuery.of(context).size.height - 500,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(food.image ?? ''), fit: BoxFit.cover),
              color: Color.fromRGBO(240, 133, 36, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        food.name ?? '',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'N${food.price ?? ''}',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (CartList.contains(food)) {
                              Avfoodspro().removefromcart(food);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(removesnack);
                            } else {
                              Avfoodspro().addtocart(food);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(addsnack);
                            }
                          },
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                                fontFamily: 'Montserrat', color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
