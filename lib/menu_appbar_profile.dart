import 'package:flutter/material.dart';

class MenuAppbarProfile extends StatelessWidget{

  IconData iconData = Icons.menu;
  bool miniButton = false;
  bool activeButton = false;
  MenuAppbarProfile(this.iconData, this.miniButton, this.activeButton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    final menuItemBar = Expanded(
      flex: 1,
      child: Container(
        height: miniButton ? 35 : 55,
        width: miniButton ? 35  : 55,
        child: Center(
          child: Icon(
            iconData,
            color:  Color(0xFF584CD1),
            size: miniButton ? 20.0 : 45.0,
          ),
        ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: activeButton ? Colors.white : Colors.white54,
      ),
      ),
    );



    return menuItemBar;
  }

}