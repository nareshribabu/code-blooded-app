import 'package:code_blooded/Availability.dart';
import 'package:code_blooded/Checklist.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: Container(
                width: 300.0,
                height: 50.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: Text(
                        "My Progress",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff121212),
                            fontFamily: 'Source Sans Pro'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ])),
    );
  }
}
