import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardPhotoProfile extends StatelessWidget{

  String pathImage = "assets/img/caracas.jpeg";
  String title = "JJASasf";
  String description = "sffjsfsjdfksd";
  int steps = 0;
  CardPhotoProfile(this.pathImage, this.title, this.description, this.steps);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    final cardImagenProfile = Container(
      height: 230.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 16.0,
                offset: Offset(0.0, 10.0)
            )
          ]
      ),
    );

    final titleCard = Container(
      margin: EdgeInsets.only(
          left: 10.0
      ),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
        ),
      ),
    );

    final descriptionCard = Container(
      margin: EdgeInsets.only(
          left: 10.0,
          top: 5.0,
      ),
      child: Text(
        description,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          color: Colors.black38,
        ),
      ),
    );

    final stepsCard = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        top: 8.0,
      ),
      child: Text(
        "Steps $steps",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 18.0,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final favoriteCard = Container(
      margin: EdgeInsets.only(
        left: 270.0,
        top: 170.0,
      ),
        child: Container(child: FloatingActionButtonGreen()),
    );

    final cardImageProfileDetails = Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 40.0,
        right: 40.0,
        top: 190.0,
        bottom: 30.0,
      ),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black26,
            offset: Offset(0.0, 10.0),
          )
        ],
        color: Colors.white,
      ),
      child: Stack(
       // alignment: Alignment(1.0, 2.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titleCard,
              descriptionCard,
              stepsCard,


            ],
          ),
        ],
      ),
    );

    return Stack(

      children: <Widget>[
        cardImagenProfile,
        cardImageProfileDetails,
        favoriteCard,
      ],
    );
  }

}