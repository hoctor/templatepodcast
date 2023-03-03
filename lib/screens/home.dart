import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podcast/constants/paleta.dart';
import 'package:podcast/widgets/drawer.dart';
import 'package:podcast/widgets/responsive.dart';
import 'package:podcast/widgets/top_bar_contents.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String id = 'home_podcast';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: ResponsiveWidget.isSmallScreen(context)?
      AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: elephantgrey,
        elevation: 2,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Podcast',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            Icon(FontAwesomeIcons.microphoneLines,color: Colors.black,)
          ],
        ),
      ):
      PreferredSize(
        preferredSize: Size(screensize.width, 70),
        child: TopBarContents(),
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(aspectRatio: 16/9,autoPlay: true),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
                      decoration: BoxDecoration(
                          color: elephantgrey,
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black,
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
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),
          Container(
            color: elephantgrey,
            height: 400,
          ),
          Container(
            color: Colors.black,
            height: 400,
          ),
          Container(
            color: elephantgrey,
            height: 400,
          ),
        ],
      ),
    );
  }
}
