import 'package:flutter/material.dart';
import 'package:sparkathon_project/homepage/cart_screen.dart';
import 'package:sparkathon_project/homepage/catagory_screen.dart';
import 'package:sparkathon_project/homepage/homepage.dart';
import 'package:sparkathon_project/homepage/profile_screen.dart';

import 'widget/custom_app_bar.dart/custom_app_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
int _currentIndex = 0;
final List<Widget> _children = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(screenHeight: screenHeight, screenWidth: screenWidth,),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.indigoAccent,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.grey,),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.grey),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              label: "Profile",
          )]
        ),
      ),
    );
  }
}

