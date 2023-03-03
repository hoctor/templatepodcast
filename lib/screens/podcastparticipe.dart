import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://docs.google.com/spreadsheets/d/1vBuPjWhWUtKBLl4lA04BtCetX9i0YqQ8JkNmtD6s8R8/edit?usp=sharing');

class ParticipanteScreen extends StatefulWidget {
  const ParticipanteScreen({Key? key}) : super(key: key);
  static const String id = 'participante_podcast';

  @override
  State<ParticipanteScreen> createState() => _ApoieScreenState();
}

class _ApoieScreenState extends State<ParticipanteScreen> {

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(20),
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
            child: Center(
              child: Text('Venha participar do nosso Podcast',
                style: TextStyle(fontSize: 30,
                    color: corheader,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),


          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Divulgue suas ideias.',
                      style: TextStyle(fontSize: 24,
                          color: corheader,
                          fontWeight: FontWeight.bold),),
                ),
                Container(
                  child: Icon(Icons.tips_and_updates_outlined,
                    size: 100,
                    color: corheader,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Aumente seu Network.',
                      style: TextStyle(fontSize: 24,
                          color: corheader,
                          fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(Icons.connect_without_contact,
                    size: 100,
                    color: corheader,),
                ),
              ],
            ),
          ),

          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Aprimore-se!',
                      style: TextStyle(fontSize: 24,
                          color: corheader,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Icon(Icons.auto_awesome,
                    size: 90,
                    color: corheader,),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              if (!await launchUrl(_url)) throw 'Could not launch $_url';
            },
            child: Container(
              height: screensize.height*0.11,
              width: screensize.width*0.9,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text('CLIQUE AQUI e Participe!',
                        style: TextStyle(fontSize: 24,
                            color: corheader,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    child: Icon(Icons.ads_click_rounded,size: 90,color: corheader,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
