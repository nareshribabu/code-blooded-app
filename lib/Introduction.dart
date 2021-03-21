// main.dart
import 'package:flutter/material.dart';
import 'Availability.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView (
          child: Column (
            children: [
              Text(
                "WHAT IS CODE-BLOODED?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Source Sans Pro'
                ),
              ),

              SizedBox(
                width: 216,
                child: Text(
                  "A customized preparation planner that help students and recent graduates ace their technical interviews",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Source Sans Pro'
                  ),
                ),
              ),

              Row (
                children: [
                  Image.asset('assets/images/introPageImage1.png',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/arch1.png',
                    height: 200,
                    width: 100,
                  ),
                  SizedBox(
                    width: 238,
                    child: Text(
                      "WHAT CAN YOU DO WITH CODE-BLOODED?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Source Sans Pro'
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 196,
                child: Text(
                  "Get a customized plan tailored to your competence with data structures \n& algorithms topics\n\nSet reminders, check items of your to-do list and view you progress \nwith a tap of a button",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Source Sans Pro'
                  ),
                ),
              ),
              Row (
                children: [
                  Image.asset('assets/images/introPageImage2.png',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),

              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 181,
                        child: Text(
                          "HOW DO YOU GET STARTED?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Source Sans Pro'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 226,
                        child: Text(
                          "Indicate your availability and competence with various data structures & algorithm topics, and code-blooded will do the rest",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Source Sans Pro'
                          ),
                        ),
                      ),
                    ]
                  ),
                  Column(
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(3.1415),
                        child: Image.asset('assets/images/arch1.png',
                          height: 200,
                          width: 100,
                        ),
                      )
                    ]
                  ),
                ],
              ),

              Row (
                children: [
                  Image.asset('assets/images/introPageImage3.png',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),

              Container (
                height: 25,
                child: RaisedButton(
                    onPressed: () =>
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Availability(),
                      )),
                    shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(80)
                    ),
                    padding: EdgeInsets.all(0),
                    child: Ink (
                      decoration: BoxDecoration (
                        gradient: LinearGradient (
                          colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 120, maxHeight: 25),
                        alignment: Alignment.center,
                        child: Text(
                          "Let's Go",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                ),
              )
            ]
         ),
       ),
     ),
    );
  }
}

