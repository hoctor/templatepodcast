import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static const String id = 'about_podcast';

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


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
      body: Container(
        child: Image.asset("assets/images/underconstruction.jpg", fit: BoxFit.fitWidth,),
      ),
    );
  }
}
