import 'package:flutter/material.dart';
import 'gradient_profile_back.dart';
import 'settings_icons_profile.dart';
import 'details_profile.dart';
import 'menu_appbar_profile.dart';

class HeaderAppBarProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final menuButtons = Container(
      padding: EdgeInsets.only(
        top: 22.0,
      ),
      child: Row(
        children: <Widget>[
          MenuAppbarProfile(Icons.bookmark, true, true),
          MenuAppbarProfile(Icons.card_giftcard, true, false),
          MenuAppbarProfile(Icons.add, false, true),
          MenuAppbarProfile(Icons.mail, true, false),
          MenuAppbarProfile(Icons.person, true, false),
        ],
      ),
    );

    return Stack(
      //stack coloca un elemento encima de otro
      children: <Widget>[
        GradientProfileBack("Perfil"),
        ListView(
          children: <Widget>[
            SettingsIconsProfile(),
            DetailsProfile("assets/img/LorenaContrerasIcon.jpg", "Lorena Contreras", "maillorena@gmail.com"),
            menuButtons,
          ],
        ),
      ],
    );

    // throw UnimplementedError();
  }

}