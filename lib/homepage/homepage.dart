import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06),
              alignment: Alignment.topLeft,
              child: Text("Catagories", style: Theme.of(context).textTheme.headlineMedium,)
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            CarouselSlider(
              items: [
                InkWell(
                  child: Card(
                    color: Colors.indigoAccent,
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 350,
                      child: Image.asset("assets/image/clothing.jpg",)
                    ),
                  ),
                ),
                InkWell(
                  child: Card(
                    elevation: 30,
                    color: Colors.indigoAccent,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 350,
                      child: Image.asset("assets/image/furniture.jpeg")),
                  ),
                ),
                InkWell(
                  child: Card(
                    color: Colors.indigoAccent,
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 350,
                      child: Image.asset("assets/image/appliances.jpeg",)),
                  ),
                ),
                InkWell(
                  child: Card(
                    color: Colors.indigoAccent,
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 350,
                      child: Image.asset("assets/image/gadgets.jpeg", fit: BoxFit.cover,)
                      
                      ),
                  ),
                ),
              ], 
              options: CarouselOptions(
                // enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlay: true,
                clipBehavior : Clip.antiAlias,
              ) 
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06),
              alignment: Alignment.topLeft,
              child: Text("Hot Deals", style: Theme.of(context).textTheme.headlineMedium,)
            ),
            Expanded(
              child: Container(
              margin: EdgeInsets.all(20),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10
                  ),
                  children: [
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.4,
                        child: Image.asset("assets/image/watches_discount.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.4,
                        child: Image.asset("assets/image/watches_discount.png", fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ) 
              )
            )
          ],
        ),
      )
    );
  }
}