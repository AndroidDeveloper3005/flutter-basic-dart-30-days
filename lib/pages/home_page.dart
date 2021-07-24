import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int day = 30;
    final String name = "Himel";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $day"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
