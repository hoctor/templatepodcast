import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContatoScreen extends StatefulWidget {
  const ContatoScreen({Key? key}) : super(key: key);
  static const String id = 'contato_podcast';

  @override
  State<ContatoScreen> createState() => _ContatoScreenState();
}

class _ContatoScreenState extends State<ContatoScreen> {

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
        children: [
          Divider(
            height: 10,
            color: Colors.transparent,),
          //whatsapp
          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.8,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: whatsappgreen,
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
                  child: Text('Whatsapp',
                    style: TextStyle(
                        fontSize: 24,
                        color: whatsappgreen,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.whatsapp,
                    size: 100,
                    color: whatsappgreen,),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.transparent,
          ),
          //email
          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.8,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: blueemail,
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
                  child: Text('E-mail',
                    style: TextStyle(fontSize: 24,
                        color: blueemail,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(Icons.email_outlined,size: 100,color: blueemail,),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.transparent,
          ),
          //discord
          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.8,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: discordcolor,
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
                  child: Text('Discord',
                    style: TextStyle(fontSize: 24,
                        color: discordcolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(Icons.discord,size: 100,color: discordcolor,),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.transparent,
          ),
          //instagram
          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.8,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: instagramcolor,
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
                  child: Text('Instagram',
                    style: TextStyle(fontSize: 24,
                        color: instagramcolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(FontAwesomeIcons.instagram,size: 100,color: instagramcolor,),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.transparent,
          ),
          //facebook
          Container(
            height: screensize.height*0.11,
            width: screensize.width*0.8,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: facebookcolor,
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
                  child: Text('Facebook',
                    style: TextStyle(fontSize: 24,
                        color: facebookcolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Icon(FontAwesomeIcons.facebookSquare,size: 100,color: facebookcolor,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
