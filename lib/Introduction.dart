// main.dart
import 'package:flutter/material.dart';
import 'Availability.dart';

// Introductory series of illustrations explaining code-blooded and
// its uses to familiarize user with expectations.

class Introduction extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff63d8f7), Color(0xff5284f7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      width: 300.0,
                      height: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 216,
                            child: Text(
                              "WHAT IS CODE-BLOODED?",
                              style: new TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w900,
                                  foreground: Paint()..shader = linearGradient),
                            ),
                          ),
                          SizedBox(
                            width: 216,
                            child: Text(
                              "A customized preparation planner that help students and recent graduates ace their technical interviews",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 20),
                    child: Image.asset(
                      'assets/images/introPageImage1.png',
                      height: 250,
                      width: 250,
                    ),
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/arch1.png',
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      width: 300.0,
                      height: 200.0,
                      child: Column(children: [
                        SizedBox(
                          width: 238,
                          child: Text(
                            "WHAT CAN YOU DO WITH CODE-BLOODED?",
                            textAlign: TextAlign.right,
                            style: new TextStyle(
                                fontSize: 19,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w900,
                                foreground: Paint()..shader = linearGradient),
                          ),
                        ),
                        SizedBox(
                          width: 238,
                          child: Text(
                            "Get a customized plan tailored to your competence with data structures \n& algorithms topics\n\nSet reminders, check items of your to-do list and view you progress \nwith a tap of a button",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Source Sans Pro'),
                          ),
                        ),
                      ]),
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                    child: Image.asset(
                      'assets/images/introPageImage2.png',
                      height: 250,
                      width: 300,
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 300.0,
                            height: 100.0,
                            child: Column(children: [
                              SizedBox(
                                width: 226,
                                child: Text(
                                  "HOW DO YOU GET STARTED?",
                                  style: new TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w900,
                                      foreground: Paint()
                                        ..shader = linearGradient),
                                ),
                              ),
                              SizedBox(
                                width: 226,
                                child: Text(
                                  "Indicate your availability and competence with various data structures & algorithm topics, and code-blooded will do the rest",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Source Sans Pro'),
                                ),
                              ),
                            ])),
                        Image.asset(
                          'assets/images/arch2.png',
                          height: 200,
                          width: 100,
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 50, 0, 0),
                        child: Image.asset(
                          'assets/images/introPageImage3.png',
                          height: 300,
                          width: 250,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: Container(
                    height: 25,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Availability(),
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80)),
                      padding: EdgeInsets.all(0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.blue],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 120, maxHeight: 25),
                          alignment: Alignment.center,
                          child: Text(
                            "Let's Go",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
