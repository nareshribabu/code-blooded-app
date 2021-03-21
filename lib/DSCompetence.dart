// main.dart
import 'package:flutter/material.dart';

class DSCompetence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 25.0,
          child: RaisedButton(
            // onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (BuildContext context) => Availability(),
            //     )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 120.0, maxHeight: 25.0),
                alignment: Alignment.center,
                child: Text(
                  "Let's go",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
