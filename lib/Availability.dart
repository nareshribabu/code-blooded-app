// // // SecondScreen.dart

// // import 'package:flutter/material.dart';
// // import 'package:day_picker/day_picker.dart';

// class Availability extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//               child: SizedBox(
//             width: 235,
//             child: Text(
//               "What’s your availability like?",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                   fontFamily: 'Source Sans Pro'),
//             ),
//           )),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SelectWeekDays(
//               border: false,
//               boxDecoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color(0xff63d8f7),
//                       Color(0xff5284f7),
//                       Color(0xff7f65f8)
//                     ]),
//               ),
//               onSelect: (values) {
//                 print(values);
//               },
//             ),
//           ),
//           Container(
//             height: 25.0,
//             child: RaisedButton(
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => DSCompetence(),
//                   )),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(80.0)),
//               padding: EdgeInsets.all(0.0),
//               child: Ink(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Color(0xff374ABE), Color(0xff64B6FF)],
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                     ),
//                     borderRadius: BorderRadius.circular(30.0)),
//                 child: Container(
//                   constraints: BoxConstraints(maxWidth: 120.0, maxHeight: 25.0),
//                   alignment: Alignment.center,
//                   child: Text(
//                     "Next",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// SecondScreen.dart

import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';
import 'package:weekday_selector/weekday_selector.dart';
import 'package:code_blooded/DSCompetence.dart';

class Availability extends StatefulWidget {
  @override
  AvailabilityState createState() => AvailabilityState();
}

class AvailabilityState extends State<Availability> {
  final values = <bool>[false, false, false, false, false, false, false];
  int days = 0;
  // final daysSelected = <String>[
  //   "Monday",
  //   "Tuesday",
  //   "Wednesday",
  //   "Thursday",
  //   "Friday",
  //   "Saturday",
  //   "Sunday"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              child: SizedBox(
            width: 235,
            child: Text(
              "What’s your availability like?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Source Sans Pro'),
            ),
          )),
          // Text('We support custom elevations, too!'),
          WeekdaySelector(
            selectedFillColor: Colors.indigo.shade500,
            onChanged: (v) {
              printIntAsDay(v);
              setState(() {
                values[v % 7] = !values[v % 7];
              });
              days = 0;
              for (var isDayTrue in values) if (isDayTrue == true) days++;
              print(days);
            },
            selectedElevation: 15,
            elevation: 5,
            disabledElevation: 0,
            values: values,
          ),
          Container(
            height: 25.0,
            child: RaisedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => DSCompetence(),
                  )),
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
                    "Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// Print the integer value of the day and the day that it corresponds to in English.
///
/// It's added to the example so that you can always see and verify that the
/// code is correct.
printIntAsDay(int day) {
  print('Received integer: $day. Corresponds to day: ${intDayToEnglish(day)}');
}

String intDayToEnglish(int day) {
  if (day % 7 == DateTime.monday % 7) return 'Monday';
  if (day % 7 == DateTime.tuesday % 7) return 'Tueday';
  if (day % 7 == DateTime.wednesday % 7) return 'Wednesday';
  if (day % 7 == DateTime.thursday % 7) return 'Thursday';
  if (day % 7 == DateTime.friday % 7) return 'Friday';
  if (day % 7 == DateTime.saturday % 7) return 'Saturday';
  if (day % 7 == DateTime.sunday % 7) return 'Sunday';
  throw '🐞 This should never have happened: $day';
}
