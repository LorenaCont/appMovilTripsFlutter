import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';


class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Stack(
      //stack coloca un elemento encima de otro
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(),
            ReviewList()
          ],
        ),
        HeaderAppBar()

      ],
    );
  }
  
}