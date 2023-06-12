import 'package:flutter/widgets.dart';
import 'package:my_nike/models/shoee.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
    name: 'air grey', 
    price:  ' 236', 
    imagePath: 'assets/grey.jpeg', 
    description: 'cool greyss'
    ),

    Shoe(name: 'jordanB', 
    price: '200', 
    imagePath: 'assets/bluee.jpg', 
    description:'cool bluess'
    ),

     Shoe(name: 'JOrdanO12', 
    price: '300', 
    imagePath: 'assets/orange.jpg', 
    description:'cool rrangess'
    ),

     Shoe(name: 'jordanB12', 
    price: '300', 
    imagePath: 'assets/tr.jpg', 
    description:'cool bluess'
    ),   
    ];
    List<Shoe> userCart= [  
    ];

    List<Shoe> getShoeList(){
      return shoeShop;
    }

    List<Shoe> getUserCart(){
      return userCart;
    }

    void
 addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
 }
 void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
 }
    
  }
