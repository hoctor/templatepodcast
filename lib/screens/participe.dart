import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/screens/apoie.dart';
import 'package:podcast/screens/podcastparticipe.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';

class ParticipeScreen extends StatefulWidget {
  const ParticipeScreen({Key? key}) : super(key: key);
  static const String id = 'participe_podcast';

  @override
  State<ParticipeScreen> createState() => _ParticipeScreenState();
}

class _ParticipeScreenState extends State<ParticipeScreen> {

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: ResponsiveWidget.isSmallScreen(context)?
      AppBar(
        iconTheme: IconThemeData(color: cornavigation),
        backgroundColor: Colors.black,
        elevation: 2,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Podcast',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            Icon(FontAwesomeIcons.microphoneLines,color: cornavigation,)
          ],
        ),
      ):
      PreferredSize(
        preferredSize: Size(screensize.width, 70),
        child: TopBarContents(),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ApoieScreen.id);
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text ("Apóie e mostre sua marca",
                        style: TextStyle(fontSize: 24,color: cornavigation,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                    Icon(Icons.business_center_outlined,
                      color: cornavigation,
                      size: 130,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(45.0),
                height: screensize.height*0.5,
                width: screensize.width*0.4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: cornavigation,
                      offset: Offset(5,5),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,-5),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ]
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ParticipanteScreen.id);
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text ("Participe do Podcast",
                      style: TextStyle(fontSize: 24,color: corheader,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,),
                    Icon(
                      Icons.mic,
                      color: corheader,
                      size: 130,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(45.0),
                height: screensize.height*0.5,
                width: screensize.width*0.4,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: corheader,
                        offset: Offset(5,5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5,-5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
