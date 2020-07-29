import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsProfile extends StatelessWidget {

  String pathImage = "assets/img/LorenaContrerasIcon.jpg";
  String name = "Lorena Contreras";
  String email = "lorenacontreras@";

  DetailsProfile(this.pathImage, this.name, this.email);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
        ),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0
      ),

      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.white38,
            fontWeight: FontWeight.w100,
        ),
      ),
    );

    final photo = Container(
        margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0
        ),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(pathImage),
            ),
          border: Border.all(
            width: 2.0,
            color: Colors.white,
          ),
        ),
    );

    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userEmail,
        ]
    );


    return Row(
        children: <Widget>[
         photo,
          userDetails,
        ]
    );

    //throw UnimplementedError();
  }

}