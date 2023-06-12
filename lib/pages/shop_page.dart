import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_nike/components/shoe.dart';
import 'package:my_nike/models/cart.dart';
import 'package:my_nike/models/shoee.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
Future<void> _launchURl(String url)async{
  final Uri uri =Uri(scheme: "https", host: url);
  if(!await launchUrl(uri,
  mode: LaunchMode.externalApplication)){
    throw "can not launch url";
  }
}





  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);


    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text('added sucessfully to cart'),
      content: Text('check your cart'),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
       Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [        
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('search',style: TextStyle(color: Colors.white,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.search,color: Colors.white,),
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.end,
                          children: [                      
                  Text('Hot Picks for you',style: TextStyle(color: Colors.black,fontSize: 18)
                  ),               
                  GestureDetector
                  (onTap: () {
                    _launchURl("www.nike.com");
                  },
                    child: Text('see more',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),))      
              ],
              
            ),
          ),
          SizedBox(height:10 ),
          
          Expanded(child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            Shoe shoe=  value.getShoeList()[index];
            return ShoeTile(
             shoe: shoe,
             onTap: () => addShoeToCart(shoe)
            );
         })
       ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 20),
         child: Divider(
          color: Colors.grey[300],
         ),
       )
        ],
      ),
    );
}}
