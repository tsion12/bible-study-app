import 'package:flutter/material.dart';
import 'package:allover/pages/home.dart';
import 'package:allover/pages/intro1.dart';
import './pages/splash_screeen.dart';
import './pages/mainpage.dart';
import './pages/reg_s.dart';
import './pages/option_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroOne(),
  "/mainpage": (BuildContext context) => MainPage(),
  "/reg": (BuildContext context) => RegistrationScreenS(),
  "/option": (BuildContext context) => OptionScreen(),
};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.black,
          fontFamily: 'Linotype Tetria',
          buttonColor: Colors.blueAccent,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes);
  }
}
