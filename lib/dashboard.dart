import 'package:BO/trendCarousel.dart';
import 'package:BO/trend_detail.dart';
import 'package:flutter/material.dart';

import 'categoeryCarousel.dart';

class dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
          body: 
                Stack(
                   children: [
                     Positioned(
                        top: 0,
                        //left: -50,
                        child: Container(
                         height: 400,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                         color: Color(0xFF9E6037),                       
                           borderRadius: BorderRadius.only(bottomRight:  Radius.circular(80), bottomLeft:  Radius.circular(80)),)
                       ),
                     ),
                     SingleChildScrollView(
                      child: Padding(
                         padding: const EdgeInsets.only(top: 50.0),
                         child: Container(child: Column(children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                               Icon(Icons.search),
                               Container(
                                 height: 80,
                                 child: Image.asset('assets/images/BO.png')),
                               Icon(Icons.menu),
                             ],),
                           ),
                           SizedBox(height: 100),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                               Text("TRENDING", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                               Text("View all", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                             ],),
                           ),
                           SizedBox(height: 30),
                           TrendCarousel(),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                               Text("CATEGORIES", style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.bold),),
                               Icon(Icons.more_horiz),
                             ],),
                           ),
                           SizedBox(height: 30),
                           CategoryCarousel(),
                         ]),),
                       ),
                     )
                   ],  
      ),
    );
  }
}