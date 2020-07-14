import 'package:flutter/material.dart';
import 'button_ink_well.dart';

class DescriptionPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final starHalf = Container (
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color:  Color(0xFFf2C611),
      ),
    );

    final starBorder = Container (
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_border,
        color:  Color(0xFFf2C611),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star,
        color:  Color(0xFFf2C611),
      ),
    );

    final titleStars = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            //permite generar un margen especifico
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            "Caracas",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            starHalf
          ],
        )
      ],
    );

    final descriptionStars = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0
      ),

      child: Text(
        """Ubicada a los pies del Avila, una montaña de 2600 metros, donde se encuentra el parque Ávila o Waraira Repano y el Hotel Humboldt, el cual se llega por un teleférico. Es sin duda una de las mejores atracciones turísticas que tiene la ciudad""",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),

    );

    final descriptionAllReviews = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 30.0,
          right: 20.0
      ),

      child: Text(
        "All Reviews",
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Color(0xFFa3a5a7)
        ),
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),

    );


    final contentPlace = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStars,
          descriptionStars,
          ButtonInkWell("Navegador"),
          descriptionAllReviews
        ],
      ),
    );


    return contentPlace;
    //throw UnimplementedError();
  }

}