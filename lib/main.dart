import 'package:flutter/material.dart';
import 'package:podcast/screens/aboutus.dart';
import 'package:podcast/screens/apoie.dart';
import 'package:podcast/screens/contato.dart';
import 'package:podcast/screens/home.dart';
import 'package:podcast/screens/player.dart';
import 'package:podcast/screens/participe.dart';
import 'package:podcast/screens/podcastparticipe.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 nome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: const Home(),
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        PlayerScreen.id: (context) => PlayerScreen(),
        ParticipeScreen.id: (context) => ParticipeScreen(),
        ApoieScreen.id: (context) => ApoieScreen(),
        ParticipanteScreen.id: (context) => ParticipanteScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        ContatoScreen.id: (context) => ContatoScreen(),
      }
    );
  }
}

