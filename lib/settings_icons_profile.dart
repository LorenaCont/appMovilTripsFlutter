import 'package:flutter/material.dart';

class SettingsIconsProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Container(
      alignment: Alignment(1.0, -0.6),
      margin: EdgeInsets.only(
          top: 40.0,
          left: 20.0,
          right: 20.0
      ),
      child: Icon(
        Icons.settings,
        color: Colors.white38,
        size: 14.0,
      ),
    );
  }

}