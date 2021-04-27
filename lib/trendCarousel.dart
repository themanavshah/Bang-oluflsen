import 'package:flutter/material.dart';
import 'package:BO/trend_model.dart';
import 'trend_detail.dart';

class TrendCarousel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trends.length, 
        itemBuilder: (BuildContext context, int index) {
          Trend trend = trends[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return TrendDetails(trend.imageUrl, trend.productName);
              }, ),),
                          child: Stack(
                             children: [
                               Container(height: 450, width: 220, 
                             decoration: BoxDecoration(
                             image: DecorationImage(
                             fit: BoxFit.cover, image: AssetImage(trend.imageUrl)),
                               borderRadius: BorderRadius.circular(30),
                               boxShadow: [BoxShadow(
                                  color: Colors.black.withOpacity(0.7),
                                  blurRadius: 40.0, // soften the shadow
                                  spreadRadius: 3.0, //extend the shadow
                                  offset: Offset(
                                    15.0, // Move to right 10  horizontally
                                    20.0, // Move to bottom 10 Vertically
                                  ),
                                )]
                             ),),
                             Positioned( top: 210, left: 40, child: Text("${trend.productName}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
                             Positioned(top: 380, left: 25, child: CircleAvatar(backgroundColor: Colors.white.withOpacity(0.4), child: Icon(Icons.arrow_forward, color: Colors.white, size: 15,),)),
                             //Text("${trend.productName}", style: TextStyle(color: Colors.black))
                             ]
                           ),
            ),
          );
        }
        ),
    );
  }
}