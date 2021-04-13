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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240,
              width: 205,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(25, 5, 3, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ListTile(
                          title: Text('Questions Solved'),
                          subtitle: Text(' '),
                        ),
                        Image.network(
                          'assets/images/questions.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ])),
            ),
            Container(
              height: 240,
              width: 205,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(3, 5, 25, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ListTile(
                          title: Text('Topics Studied'),
                          subtitle: Text(' '),
                        ),
                        Image.network(
                          'assets/images/topics.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ])),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 390,
              width: 410,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(25, 5, 25, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ListTile(
                          title: Text('Topics here'),
                          subtitle: Text(' '),
                        ),
                      ])),
            ),
          ],
        )
      ])),
    );
  }
}
