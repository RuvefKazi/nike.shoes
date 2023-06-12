import 'package:flutter/material.dart';
import 'package:my_nike/components/bottom_nav.dart';
import 'package:my_nike/pages/cart_shop.dart';
import 'package:my_nike/pages/home_page.dart';
import 'package:my_nike/pages/shop_page.dart';

class inpage extends StatefulWidget {
  const inpage({super.key});

  @override
  State<inpage> createState() => _inpageState();
}

class _inpageState extends State<inpage> {
 int _selectedIndex=0;

 void navigateBottomBAr(int index){
  setState(() {
    _selectedIndex=index;
  });
 }
 final List<Widget> _pages = [
   ShopPage(),
   cartPage()
 ];



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[ Colors.grey.shade500,
          Colors.white]
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) {
              return IconButton(icon:Icon (Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },);
            }
          ),
          
          
          elevation: 0,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
            Column(
              children: [
                DrawerHeader(child:Image.asset("assets/nike.png",)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(color: Colors.black,),
                ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage())),
                  child: ListTile(
                
                    leading:Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Icon(Icons.home,color: Colors.black,),
                        
                    ),
                    title: Text('Home',style: TextStyle(color: Colors.black,
                    fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                
                ListTile(
    
                  leading:Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Icon(Icons.info,color: Colors.black,),
          
                  ),
                  title: Text('info',style: TextStyle(color: Colors.black,
                  fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            ListTile(
    
              leading:Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Icon(Icons.logout,color: Colors.black,),
          
              ),
              title: Text('Logout',style: TextStyle(color: Colors.black,
              fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],
          
          
          )
        ),
        backgroundColor: Colors.transparent,
      bottomNavigationBar: mynavig(
        onTabChange: (index) => navigateBottomBAr(index) ,
      ),
      body: _pages[_selectedIndex],
      ),
    );
    
  }
}