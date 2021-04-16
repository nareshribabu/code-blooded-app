import 'package:code_blooded/Availability.dart';
import 'package:code_blooded/Checklist.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'FullPlanBackend.dart';

// Progress dashboard consisting of a summary of the users progress in terms of:
// - Checklist
// - Full Plan
// - All Topics
// - Questions Answered

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FullPlanBackend data = new FullPlanBackend();
    double newvalue;
    if (data.getChecked() == true) {
      newvalue = data.getArrayProgressIncrease();
      print(newvalue);
    } else {
      newvalue = 0.9;
    }

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 13,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 250, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Arrays",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: newvalue,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 220, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Linked-List",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: 0.7,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 250, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Strings",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: 0.90,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 250, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Graphs",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: 0.2,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 250, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Sorting",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: 0.4,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Container(
                              // color: Colors.red,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 220, 10),
                                  child: Container(
                                    width: 102,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Hash-Maps",
                                      style: TextStyle(
                                        color: Color(0x99000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  value: 0.1,
                                  backgroundColor:
                                      Color.fromARGB(255, 82, 132, 247),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 99, 216, 247)),
                                ),
                              ])),
                        ),
                      ])),
            ),
          ],
        )
      ])),
    );
  }
}
