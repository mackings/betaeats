import 'dart:ui';

import 'package:beta_eats/model/bmodel.dart';
import 'package:beta_eats/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:beta_eats/Auths/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beta_eats/model/bmodel.dart';
import 'package:badges/badges.dart';


class Bcart extends StatefulWidget {
  const Bcart({ Key? key }) : super(key: key);

  @override
  State<Bcart> createState() => _BcartState();
}

class _BcartState extends State<Bcart> {


  int TotalPrice = 0;
  List<avfoods> foodies = CartList;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(240, 133, 36, 1),
          title: Text('Your Cart ', style: TextStyle(fontFamily: 'Montserrat'),),
          actions: [
            IconButton(onPressed: (){

              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text('Simply Pay to Continue'),
                content: Text('0000000 Access Bank'),
                actions: [
                  FlatButton(
                    child: Text('Payment Made'),
                    onPressed: (){
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: Text('Order Recived Successfully'),
                        content: Text('You would be reached soon'),
                        actions: [
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Bcart()),
                              );
                            },
                          ),
                        ],
                      ),);
                      
                    },
                  ),
                  FlatButton(
                    child: Text('leave your feeback'), 
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ));
             

            }, icon: Icon(Icons.money)),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: ListView(
              children: Floorprice(),
            )),
        
            Text('Total Price: $TotalPrice',style: TextStyle(fontFamily: 'Montserrat'),),
          ],
        ),
      ),
    );
  }








  List<Widget> Floorprice() {
    List<Widget> list = [
      const SizedBox(height: 20),
    ];
    TotalPrice = 0;
    for (var i = 0; i < foodies.length; i++) {
      list.add(
          Hero(tag: foodies[i].image ?? '', child: AVfoodproperty(foodies[i], i, context)));

      TotalPrice += foodies[i].price!;
      setState(() {});
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
              image: DecorationImage(image: AssetImage(food.image ?? ''), fit: BoxFit.cover),
              color: Color.fromRGBO(240, 133, 36, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(food.name ?? '', style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('N${food.price ?? ''}', style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),),
                    SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          if (foodies.contains(food)) {
                            Avfoodspro().removefromcart(food);
                           
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Removed from cart'),
                            ));
                            setState(() {
                              
                            });
                            
                          } else {
                          }

                        },
                        child: Text('Remove From Cart', style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),)),
                      
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