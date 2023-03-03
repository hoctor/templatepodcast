import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/screens/aboutus.dart';
import 'package:podcast/screens/contato.dart';
import 'package:podcast/screens/home.dart';
import 'package:podcast/screens/participe.dart';
import 'package:podcast/screens/player.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Padding(

          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Home.id);
                },
                child: Text(
                  'Home',
                  style: TextStyle(color: cornavigation, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: corborda,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PlayerScreen.id);
                },
                child: Text(
                  'Episódios',
                  style: TextStyle(color: cornavigation, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: corborda,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ParticipeScreen.id);
                },
                child: Text(
                  'Participe',
                  style: TextStyle(color: cornavigation, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: corborda,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AboutScreen.id);
                },
                child: Text(
                  'Sobre nós',
                  style: TextStyle(color: cornavigation, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: corborda,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ContatoScreen.id);
                },
                child: Text(
                  'Contato',
                  style: TextStyle(color: cornavigation, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: corborda,
                  thickness: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Icon(FontAwesomeIcons.facebookSquare,color: Colors.white,),
                  ),
                  InkWell(
                    child: Icon(FontAwesomeIcons.instagram,color: Colors.white,),
                  ),
                  InkWell(
                    child: Icon(FontAwesomeIcons.twitter,color: Colors.white,),
                  ),
                  InkWell(
                    child: Icon(FontAwesomeIcons.twitch,color: Colors.white,),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | Verona Olímpia',
                    style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}