// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  // TRUE: register page, FALSE: login page
  bool _register = true;

  void _changeScreen() {
    setState(() {
      // sets it to the opposite of the current screen
      _register = !_register;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//      height:,
        child: Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  MaterialButton(
                    onPressed: _changeScreen,
                    child: const Text('REGISTER'),
                  ),
                  MaterialButton(
                    onPressed: _changeScreen,
                    child: const Text('LOGIN'),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'E-MAIL'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'USERNAME'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'PASSWORD'),
              )
            ],
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: MaterialButton(
            onPressed: () => {},
            child: Text(_register ? 'REGISTER' : 'LOGIN'),
          ),
        ),
      ],
    ));
  }
}
