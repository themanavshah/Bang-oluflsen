import 'package:flutter/material.dart';

import 'trend_model.dart';

class TrendDetails extends StatelessWidget {

  final String imageUrl;
  final String productName;

  TrendDetails(this.imageUrl, this.productName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
          body: Column(
        children: [
            Stack(
                children: [
                  Positioned(
                    // right: -300,
                    // top: -100,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(color: Colors.amber[50], 
                      borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(80)),),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(80)),
                        child: 
                      Image.asset(imageUrl, fit: BoxFit.cover,)),
              ),
                  ),
              Positioned(
                top: 60,
                left: 30,
                child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
              Positioned(
                top: 60,
                right: 30,
                child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: Icon(Icons.settings, color: Colors.white,)),
                ),
              ]
            ),
            Positioned(
                bottom: -20,
                right: 30,
                child: CircleAvatar(
                  radius: 30,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.shopping_bag, color: Colors.white,)),
                ),
        ],   
      ),
    );
  }
}