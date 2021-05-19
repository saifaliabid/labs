import 'package:flutter/material.dart';
import 'package:labs/pages/GetStarted/GetStarted.dart';
import 'package:labs/pages/config.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: GetStarted(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      backgroundColor: PrimeryColor,
      loaderColor: Colors.yellow,
    );
  }
}
