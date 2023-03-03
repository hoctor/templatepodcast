import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/screens/aboutus.dart';
import 'package:podcast/screens/contato.dart';
import 'package:podcast/screens/home.dart';
import 'package:podcast/screens/participe.dart';
import 'package:podcast/screens/player.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({Key? key}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: elephantgrey,
      child: Padding(padding: EdgeInsets.all(20),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: screenSize.width/15,),
            Icon(FontAwesomeIcons.microphoneLines,
              color: Colors.black,
            ),
            const Text('Podcast',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w900,
              letterSpacing: 3,
            ),
            ),
            SizedBox(width: screenSize.width / 15),
            InkWell(
              onHover: (value){
                setState((){
                  value
                    ? _isHovering[0] = true
                    : _isHovering[0] = false;
                });
              },
              onTap: (){
                Navigator.pushNamed(context, Home.id);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Home',
                  style: TextStyle(
                    color: _isHovering[0]
                        ? Colors.black.withOpacity(0.5)
                        : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      maintainAnimation:true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: cordrawer,
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 15),
            InkWell(
              onHover: (value){
                setState((){
                  value
                      ? _isHovering[1] = true
                      : _isHovering[1] = false;
                });
              },
              onTap: (){
                Navigator.pushNamed(context, PlayerScreen.id);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Episódios',
                    style: TextStyle(
                        color: _isHovering[1]
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      maintainAnimation:true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: cordrawer,
                      ))
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 15),
            InkWell(
              onHover: (value){
                setState((){
                  value
                      ? _isHovering[2] = true
                      : _isHovering[2] = false;
                });
              },
              onTap: (){
                Navigator.pushNamed(context, ParticipeScreen.id);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Participe',
                    style: TextStyle(
                        color: _isHovering[2]
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      maintainAnimation:true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: cordrawer,
                      ))
                ],
              ),

            ),
            SizedBox(width: screenSize.width / 15),
            InkWell(
              onHover: (value){
                setState((){
                  value
                      ? _isHovering[3] = true
                      : _isHovering[3] = false;
                });
              },
              onTap: (){
                Navigator.pushNamed(context, AboutScreen.id);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Sobre nós',
                    style: TextStyle(
                        color: _isHovering[3]
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      maintainAnimation:true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: cordrawer,
                      ))
                ],
              ),

            ),
            SizedBox(width: screenSize.width / 15),
            InkWell(
              onHover: (value){
                setState((){
                  value
                      ? _isHovering[4] = true
                      : _isHovering[4] = false;
                });
              },
              onTap: (){
                Navigator.pushNamed(context, ContatoScreen.id);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Contato',
                    style: TextStyle(
                        color: _isHovering[4]
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      maintainAnimation:true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: cordrawer,
                      ))
                ],
              ),

            ),
          ],
        ),
      ),),
    );
  }
}
