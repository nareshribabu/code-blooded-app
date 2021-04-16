import 'package:code_blooded/Introduction.dart';
import 'package:flutter/material.dart';

// Homepage of the app, consists of code-blooded logo and app gradient
//
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff63d8f7),
            Color(0xff5284f7),
            Color(0xff7f65f8)
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Introduction(),
                      )),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ],
            ),
          )),
    );
  }
}
