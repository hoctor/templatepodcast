import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';
import 'package:podcast/constants/paleta.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);
  static const String id = 'player_podcast';

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
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
      body: ResponsiveWidget.isSmallScreen(context)?
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // youtube video
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.deepPurple[400],
                ),
              ),
            ),

            // comment section & recommended videos
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ):Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // youtube video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.deepPurple[300],
                        child: Image.asset("assets/images/podmic.jpg", fit: BoxFit.fitWidth,),
                      ),
                    ),
                  ),

                  // comment section & recommended videos
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            // second column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
              ),
            )
          ],
        ),
      )

    );
  }
}

