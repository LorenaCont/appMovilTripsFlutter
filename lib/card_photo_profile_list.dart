import 'package:flutter/material.dart';
import 'card_photo_profile.dart';

class CardPhotoProfileList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 700.0,
      margin: EdgeInsets.only(
          top: 250.0,

      ),
      //altura
      child: ListView(

        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardPhotoProfile("assets/img/avila.jpg", "Caracas", "Parque Nacional del Avila ", 121343),
          CardPhotoProfile("assets/img/florBarquisimeto.jpg", "Lara", "Barquisimeto Flor de Venezuela", 12134),
          CardPhotoProfile("assets/img/LosRoquesVene.jpg", "Los Roques", "Cayo de Agua, Archipielago de Los Roques", 12134),
          CardPhotoProfile("assets/img/saltoAngel.jpeg", "Salto Angel", "Cascada de agua más alta del mundo, con una altura de 979 m, ​​​originada en el Auyantepuy",12134)
        ],
      ),
    );
    // throw UnimplementedError();
  }

}