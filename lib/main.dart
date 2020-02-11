import 'package:flutter/material.dart';
import 'package:instaclone/Screens/Home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'InstaClone',
      theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Color(0xFF000000),
          primaryColorDark: Colors.white.withAlpha(240),
          cursorColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.white),
          primarySwatch: white
        // primaryTextTheme: TextTheme(caption: TextStyle(color: Colors.black))
      ),
      home: Home(),
    );
  }
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

