import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/languageSelect.dart';
import 'screens/intro.dart';
import 'screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}


var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => LanguageSelector(),
  "/intro": (BuildContext context) => IntroScreen(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      title: 'Flutter Demo',
        theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      home: SplashScreen(),
        routes: routes
    );
  }



}

