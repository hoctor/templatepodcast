import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://docs.google.com/spreadsheets/d/1vBuPjWhWUtKBLl4lA04BtCetX9i0YqQ8JkNmtD6s8R8/edit?usp=sharing');

class ApoieScreen extends StatefulWidget {
  const ApoieScreen({Key? key}) : super(key: key);
  static const String id = 'apoie_podcast';

  @override
  State<ApoieScreen> createState() => _ApoieScreenState();
}

class _ApoieScreenState extends State<ApoieScreen> {

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[800],
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
                color: Colors.grey[800],
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
                ],
              ),
              child: Center(
                child: Text('Apóie e mostra sua marca',
                    style: TextStyle(fontSize: 30,
                        color: cornavigation,
                        fontWeight: FontWeight.bold),
                  ),
              ),
            ),


          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
            decoration: BoxDecoration(
              color: Colors.grey[800],
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
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Mostre seu logo no monitor',
                      style: TextStyle(fontSize: 24,
                          color: cornavigation,
                          fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(Icons.screenshot_monitor,size: 100,color: cornavigation,),
                ),
              ],
            ),
          ),

          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
            decoration: BoxDecoration(
              color: Colors.grey[800],
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
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Mostre seu produto na mesa',style: TextStyle(fontSize: 24,color: cornavigation,fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Icon(Icons.table_restaurant_outlined,size: 100,color: cornavigation,),
                ),
              ],
            ),
          ),

          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.9,
            decoration: BoxDecoration(
              color: Colors.grey[800],
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
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Aumente o alcance da sua empresa!',style: TextStyle(fontSize: 24,color: cornavigation,fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Icon(Icons.add_reaction_outlined,size: 90,color: cornavigation,),
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
                color: Colors.grey[800],
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
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text('CLIQUE AQUI e agende AGORA!',style: TextStyle(fontSize: 24,color: cornavigation,fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    child: Icon(Icons.ads_click_rounded,size: 90,color: cornavigation,),
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
