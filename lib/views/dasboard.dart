import 'package:beta_eats/model/bmodel.dart';
import 'package:beta_eats/providers/providers.dart';
import 'package:beta_eats/views/Drinkspage.dart';
import 'package:beta_eats/views/Ricepage.dart';
import 'package:beta_eats/views/bcart.dart';
import 'package:beta_eats/views/bhome.dart';
import 'package:beta_eats/views/swallowpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:beta_eats/Auths/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beta_eats/model/bmodel.dart';
import 'package:badges/badges.dart';


class Dashbord extends StatefulWidget {
  const Dashbord({ Key? key }) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
    width: 360,
    height: 800,
    color: Colors.white,
    child: Stack(
        children:[
            Positioned(
                left: 104,
                top: 63,
                child: Text(
                    "Food Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                    ),
                ),
            ),
            Positioned(
                left: 41,
                top: 135,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RicePage()));
                  },
                  child: Container(
                      width: 126,
                      height: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.only(top: 37, bottom: 49, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                              Text(
                                  "Rice",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                          ],
                      ),
                  ),
                ),
            ),
            Positioned(
                left: 41,
                top: 452,
                child: GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) => AlertDialog(
                      title: Text("Sorry"),
                      content: Text("Chops Not Ready Yet Please check back later"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
                  },
                  child: Container(
                      width: 126,
                      height: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.only(left: 33, right: 34, top: 44, bottom: 42, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                              Text(
                                  "Chops",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                          ],
                      ),
                  ),
                ),
            ),
            Positioned(
                left: 193,
                top: 452,
                child: Container(
                    width: 126,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff08524),
                    ),
                    padding: const EdgeInsets.only(top: 39, bottom: 47, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Text(
                                "Beverages",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 41,
                top: 294,
                child: GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) => AlertDialog(
                      title: Text("Sorry"),
                      content: Text("Snacks Not Ready Yet Please check back later"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
                  },
                  child: Container(
                      width: 126,
                      height: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 43, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                              Text(
                                  "Snacks",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                
                              
                          ],
                      ),
                  ),
                ),
            ),
            Positioned(
                left: 193,
                top: 292,
                child: GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) => AlertDialog(
                      title: Text("Hello"),
                      content: Text("Drinks have been added to the  General menu"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
                  },
                  child: Container(
                      width: 126,
                      height: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.only(left: 32, right: 33, top: 50, bottom: 36, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:[
                              Text(
                                  "Drinks",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                          ],
                      ),
                  ),
                ),
            ),
            Positioned(
                left: 193,
                top: 135,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SwallowPage()));
                  },
                  child: Container(
                      width: 126,
                      height: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.only(left: 28, right: 21, top: 35, bottom: 51, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                              Text(
                                  "Swallow",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                          ],
                      ),
                  ),
                ),
            ),
            Positioned(
                left: 41,
                top: 622,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                      width: 278,
                      height: 66,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff08524),
                      ),
                      padding: const EdgeInsets.only(left: 86, right: 93, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                              Text(
                                  "Browse All",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                  ),
                              ),
                          ],
                      ),
                  ),
                ),
            ),
        ],
    ),
)
      ),
    );
  }
}