import 'package:code_blooded/Availability.dart';
import 'package:code_blooded/EditAvailability.dart';
import 'package:code_blooded/Checklist.dart';
import 'package:code_blooded/FullPlan.dart';
import 'package:code_blooded/Progress.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

// Navigation bar component consisting of:
// - Full Plan
// - Daily Checklist
// - Progress Dashboard
// - Updated Availability

class Navbar extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Navbar> {
  int _currentIndex = 0;
  int _counter = 0;

  List<Widget> _widgetOptions = <Widget>[
    FullPlan(),
    Checklist(),
    Progress(),
    EditAvailability(),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetBuilder builder;
    print(_currentIndex);
    switch (_currentIndex) {
      case 0:
        builder = (BuildContext context) => EditAvailability();
        break;

      case 1:
        builder = (BuildContext context) => FullPlan();
        break;

      case 2:
        builder = (BuildContext context) => Checklist();
        break;
    }
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.bounceIn,
            onItemSelected: (index) => setState(() => _currentIndex = index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.dashboard_outlined),
                title: Text('Full Plan'),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.check_box_outlined),
                title: Text('Checklist'),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.timeline_outlined),
                title: Text(
                  'Progress',
                ),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.edit_outlined),
                title: Text('Availability'),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              )
            ]));
  }
}
