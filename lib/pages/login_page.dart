import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Wellcome",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "password"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //print("Button clicked");
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
