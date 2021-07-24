import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/login_page.dart';
import 'package:flutter_basic/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringFish(bag: true, taka: 50);
    bringCat(bag: true, taka: 120);

    return MaterialApp(
      //home: HomePage(),
      //theme
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      //routes
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  bringFish({bool bag = false, int taka = 100}) {
    //works
  }
  bringCat({@required bool bag = false, int taka = 100}) {
    //works
  }
}
