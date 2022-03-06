import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:beta_eats/model/foodmodel.dart';

class Products extends ConsumerStatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends ConsumerState<Products> {
  var gfoodlist = Foodpro();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
      
      ),
    );
  }
}
