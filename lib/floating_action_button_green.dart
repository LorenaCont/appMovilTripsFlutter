import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _FloatingActionButtonGreen();
    // throw UnimplementedError();
  }


}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavorited = false;

  void onPressedFav() {
    setState(() {

      if (_isFavorited) {
        _isFavorited = false;
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Quitaste de tus favoritos"),
            )
        );
      } else {
        _isFavorited = true;
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Agregastes a tus favoritos"),
            )
        );
      }
    });


  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_border
      ),
    );
    //throw UnimplementedError();
  }

}