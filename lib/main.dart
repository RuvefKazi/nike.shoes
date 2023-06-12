import 'package:flutter/material.dart';
import 'package:my_nike/models/cart.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    ChangeNotifierProvider(create: (context) =>Cart(),
    builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homePage(),
    
      ));
  }
}
     
      
    