import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key,
    required this.screenHeight,
    required this.screenWidth
  });
  final double screenHeight;
  final double screenWidth;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  
  @override
  Size get preferredSize => Size(screenWidth, screenHeight*0.2);
}

class _CustomAppBarState extends State<CustomAppBar>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight*0.15,
      padding: EdgeInsets.symmetric(horizontal: widget.screenWidth*0.05, vertical: widget.screenHeight*0.01),
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: widget.screenWidth*0.05),
            width: widget.screenWidth,
            alignment: Alignment.topLeft,
            child: Text("Trendy", style: Theme.of(context).textTheme.headlineMedium,)),
          Container(
            margin: EdgeInsets.symmetric(vertical: widget.screenHeight*0.01),
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                suffix: IconButton(onPressed: (){}, icon: Icon(Icons.search))
              ),
            ),
          )
        ],
      ),
    );

  }
}