import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Reviews("assets/img/people1.jpg", "Lorena Contreras", "1 review · 5 photos", "There is an amazing place in Caracas"),
        Reviews("assets/img/people2.jpeg", "EE PP", "5 review · 10 photos", "There is an amazing place in Caracas"),
        Reviews("assets/img/people3.jpg", "EE Tres", "2 review · 7 photos", "There is an amazing place in Caracas"),

      ],
    );
    //throw UnimplementedError();
  }
  
}