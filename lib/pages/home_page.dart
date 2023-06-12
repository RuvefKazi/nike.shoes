import 'package:flutter/material.dart';
import 'package:my_nike/pages/inpage.dart';



class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.white,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 100,left: 50,right: 50,),
              
              child: Image.asset("assets/nike.png",height: 240,),
            ),
            SizedBox(height: 100,),

            Text("Just Do It",
            style: TextStyle
            (fontWeight: FontWeight.bold,
            fontSize:25,color: Colors.black )

            ),

            SizedBox(height: 10,),

            
              Text("Kick Start To your Sneaker World",
              style: TextStyle(fontSize: 15,
              color: Colors.grey[700])
              ),
              SizedBox(height: 48,),

              GestureDetector(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>inpage())),
                child: Container(
                  margin:EdgeInsets.all(20),
                  
                  
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(12)),
              
                 
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Center(
                          child: Text("Shop now",
                          style: TextStyle(color: Colors.white,
                          fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
              ),
              
                 
                
               
              
              

             


          ]),
      
      ),
      

    );
  }
}