import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:untitledtoku/screens/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  audioPlayer = AudioPlayer();
  runApp(const TokuApp());
}
// ahmad nour haedr
class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku',
      home: HomePage(),
    );
  }
}

void navigatorTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);


late AudioPlayer audioPlayer;

