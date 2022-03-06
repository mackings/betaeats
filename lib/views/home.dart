import 'package:beta_eats/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:beta_eats/Auths/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beta_eats/model/foodmodel.dart';
import 'package:badges/badges.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  Foodpro get food => Foodpro();

  @override
  Widget build(BuildContext context) {
    final userfood = Foodpro();
    
    var foodcat = ref.watch(foodc.notifier).state;
    var mealpro = ref.read(mealsprovider).addmeal;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 17,
                  child: Container(
                    width: 321,
                    height: 63,
                    padding: const EdgeInsets.only(
                      top: 7,
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 35,
                          height: 48,
                          child: Icon(Icons.menu, color: Colors.black),
                        ),
                        SizedBox(width: 251),
                        Container(
                          width: 35,
                          height: 48,
                          child: Badge(
                              badgeContent: Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              child: Icon(Icons.shopping_basket,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  top: 80,
                  child: SizedBox(
                    width: 243,
                    height: 59,
                    child: GestureDetector(
                      onTap: () {
                      
                      },
                      child: Text(
                        "Hello \n${foodcat}",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 168,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffc4c4c4),
                    ),
                    padding: const EdgeInsets.only(
                      left: 7,
                      right: 41,
                      top: 18,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 44,
                          height: 37,
                          child: FlutterLogo(size: 37),
                        ),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 226,
                          // height: 17,
                          child: Text(
                            "Search Favourites",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  top: 265,
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 300,
                  child: Container(
                    width: 155,
                    height: 182,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff08524),
                    ),
                    padding: const EdgeInsets.only(
                      left: 28,
                      right: 42,
                      top: 32,
                      bottom: 19,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 94,
                            height: 100,
                            child: Image.network(
                                'https://images.unsplash.com/photo-1603133872878-684f208fb84b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80')),
                        SizedBox(height: 8),
                        SizedBox(
                          width: 96,
                          height: 23,
                          child: Text(
                            "Cereals",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 511,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 300,
                  child: Container(
                    width: 170,
                    height: 182,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff08524),
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 45,
                      top: 31,
                      bottom: 16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 108,
                          height: 100,
                          child: FlutterLogo(size: 100),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Beef",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 562,
                  child: Container(
                    width: 330,
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff08524),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 12,
                          top: -12,
                          child: Container(
                            width: 83,
                            height: 98,
                            padding: const EdgeInsets.only(
                              right: 5,
                              top: 20,
                              bottom: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 51,
                                  height: 45,
                                  child: FlutterLogo(size: 45),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Vegetables",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 79,
                          top: -7,
                          child: Container(
                            width: 100,
                            height: 83,
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 13,
                              top: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 82,
                                  height: 59,
                                  child: FlutterLogo(size: 59),
                                ),
                                SizedBox(
                                  width: 53,
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 179,
                          top: 9,
                          child: Container(
                            width: 78,
                            height: 77,
                            padding: const EdgeInsets.only(
                              right: 9,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 61,
                                  height: 42,
                                  child: FlutterLogo(size: 42),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Creamery",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 100,
                              height: 80,
                              padding: const EdgeInsets.only(
                                top: 05,
                                bottom: 6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 29,
                                    child: FlutterLogo(size: 42),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Drinks",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 686,
                  child: Container(
                    width: 328,
                    height: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff724eae),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 12,
                          child: Container(
                            width: 71,
                            height: 48,
                            child: FlutterLogo(size: 48),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 60,
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 167,
                          top: 12,
                          child: Container(
                            width: 66,
                            height: 48,
                            child: FlutterLogo(size: 48),
                          ),
                        ),
                        Positioned(
                          left: 167,
                          top: 60,
                          child: Text(
                            "Buy Food",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 62,
                          top: 12,
                          child: Container(
                            width: 100,
                            height: 45,
                            child: FlutterLogo(size: 45),
                          ),
                        ),
                        Positioned(
                          left: 82,
                          top: 60,
                          child: Text(
                            "Price List",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 263,
                          top: 17,
                          child: Container(
                            width: 33,
                            height: 41,
                            child: FlutterLogo(size: 33),
                          ),
                        ),
                        Positioned(
                          left: 251,
                          top: 60,
                          child: Text(
                            "My foods",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
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
