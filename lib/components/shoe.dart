import 'package:flutter/material.dart';
import 'package:my_nike/models/shoee.dart';


class ShoeTile extends StatelessWidget {
   Shoe shoe;
   void Function()?onTap;
   ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
            ),
            Text(shoe.description,
            style: TextStyle(color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(     
                    crossAxisAlignment: CrossAxisAlignment.start,            
                    children: [
                      
                      Text(shoe.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('\$' + shoe.price,style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),)
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                        color: Colors.black
                      ),
                      child: Icon(Icons.add,color: Colors.white,)),
                  ),
                ],
              ),
            )


        ],
      ),


    );
  }
}