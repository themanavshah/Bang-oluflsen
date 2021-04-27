import 'package:flutter/material.dart';
import 'package:BO/category_model.dart';

class CategoryCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length, 
        itemBuilder: (BuildContext context, int index) {
          Category category = Categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
                           children: [
                             Container(height: 220, width: 280, 
                             //child: Image.asset("assets/images/xyz.png"),
                           ),
                           Positioned(
                             left: 50,
                                                        child: Container(
                               height: 220, width: 220,
                               decoration: BoxDecoration(
                               color: Colors.white,
                          //  image: DecorationImage(
                          //  fit: BoxFit.contain, image: AssetImage("assets/images/xyz.png")
                          // ),
                               borderRadius: BorderRadius.circular(30),
                              //  boxShadow: [BoxShadow(
                              //     color: Colors.black.withOpacity(0.5),
                              //     blurRadius: 30.0, // soften the shadow
                              //     spreadRadius: 3.0, //extend the shadow
                              //     offset: Offset(
                              //       10.0, // Move to right 10  horizontally
                              //       10.0, // Move to bottom 10 Vertically
                              //     ),
                              //   )]
                             ),),
                           ),
                           Positioned(
                             top: double.parse("${category.top}"), left: double.parse("${category.left}"), 
                           child: Container(
                             height: category.productName == "Speaker" ?
                              100 :
                              220, 
                             child: Image.asset(category.imageUrl),
                             )),
                           Positioned(top: 40, right: 50, child: RotatedBox(quarterTurns: 1, child: Text("${category.productName}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),))),
                           //Positioned(top: 380, left: 25, child: CircleAvatar(backgroundColor: Colors.white.withOpacity(0.4), child: Icon(Icons.arrow_forward, color: Colors.white, size: 15,),))
                           ]
                         ),
          );
        }
        ),
    );
  }
}