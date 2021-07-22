import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringFish(bag: true, taka: 50);
    bringCat(bag: true, taka: 120);

    return MaterialApp(home: HomePage());
  }

  bringFish({bool bag = false, int taka = 100}) {
    //works
  }
  bringCat({@required bool bag = false, int taka = 100}) {
    //works
  }
}
