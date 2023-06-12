import 'package:flutter/material.dart';
import 'package:my_nike/components/cartItem.dart';
import 'package:my_nike/models/cart.dart';
import 'package:my_nike/models/shoee.dart';
import 'package:provider/provider.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 24,color: Colors.black),
            ), 
         
          SizedBox(height: 25,),
          Expanded(child: ListView.builder
          (itemCount: value.getUserCart().length,
            itemBuilder:(context, index){
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe:individualShoe);
          }))
          
          
        ],
      ),
    ));
}}