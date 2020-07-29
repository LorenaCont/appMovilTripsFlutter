import 'package:flutter/material.dart';
import 'header_appbar_profile.dart';
import 'card_photo_profile_list.dart';


class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  //  throw UnimplementedError();
    return Stack(
      //stack coloca un elemento encima de otro
      children: <Widget>[
        HeaderAppBarProfile(),
        ListView(
          children: <Widget>[
            CardPhotoProfileList(),
          ],
        ),


      ],
    );




  }

}