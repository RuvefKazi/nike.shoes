import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class mynavig extends StatelessWidget {
  void Function(int)? onTabChange;
  mynavig({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
    

      child:GNav(
        color:Colors.black,
        activeColor: Colors.grey[900],
        tabActiveBorder:Border.all(color: Colors.white) ,
        tabBackgroundColor:Colors.grey.shade500,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) =>  onTabChange!(value),
        tabs: [
          
        GButton(icon: Icons.home,
        text: 'shop',
        ),


         GButton(icon: Icons.shopping_bag_rounded,
        text: 'cart',)
      ]),
    );
  }
}