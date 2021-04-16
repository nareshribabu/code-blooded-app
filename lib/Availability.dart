import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';
import 'package:code_blooded/DSCompetence.dart';
import 'package:flutter/services.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;

import 'FullPlanBackend.dart';

// Prompts the user for their availability to allocate time per topic accurately
// Takes in the following parameters:
// - Days
// - Hours
// - Minutes
// - Start Date
// - End Date
// Performs backend calculations to be rendered through full plan

class Availability extends StatelessWidget {

  TextEditingController hoursController = new TextEditingController();
  TextEditingController minutesController = new TextEditingController();

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff63d8f7), Color(0xff5284f7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 70.0));

  @override
  Widget build(BuildContext context) {
    // Backend Variables
    FullPlanBackend data = new FullPlanBackend();

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
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Container(
                      width: 350.0,
                      height: 264.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 330,
                            height: 50,
                            child: Text(
                              "What's your availability like?",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff121212),
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ),
                          SizedBox(
                            width: 330,
                            height: 50,
                            child: Text(
                              "Days per week",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                            child: SelectWeekDays(
                              border: false,
                              boxDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Color(0xff4397eb),
                              ),
                              onSelect: (values) {
                                print(values);
                                data.setdaysPerWeek(values);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 330,
                            height: 50,
                            child: Text(
                              "Hours per day",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                            width: 300.0,
                            height: 110.0,
                            child: Wrap(spacing: 60, children: [
                              SizedBox(
                                  width: 120,
                                  child: TextFormField(
                                    controller: hoursController,
                                    textAlign: TextAlign.left,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      // FilteringTextInputFormatter.allow(RegExp(r'[0-9]{2}$')),
                                    ],
                                    decoration: InputDecoration(
                                      hintText: 'HH',
                                      labelText: 'Hours ',
                                    ),
                                    onChanged: (value) {
                                      print("Hours Text: ${value}");
                                      data.setHours(int.parse(value));
                                    },
                                  )),
                              SizedBox(
                                  width: 120,
                                  child: TextFormField(
                                    controller: minutesController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      // FilteringTextInputFormatter.allow(RegExp(r'^[0-9]{2}$')),
                                    ],
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      hintText: 'MM',
                                      labelText: 'Minutes ',
                                    ),
                                    onChanged: (value) {
                                      print("Minutes Text: ${value}");
                                      data.setMinutes(int.parse(value));
                                    },
                                  ))
                            ])))
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: <
                  Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                        width: 300.0,
                        height: 50.0,
                        child: Wrap(spacing: 100, children: [
                          SizedBox(
                              width: 120,
                              height: 50,
                              child: Text(
                                "Time period",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff121212),
                                    fontFamily: 'Source Sans Pro'),
                              )),
                          new MaterialButton(
                              color: Color(0xff4397eb),
                              height: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0)),
                              onPressed: () async {
                                final List<DateTime> picked =
                                    await DateRangePicker.showDatePicker(
                                        context: context,
                                        initialFirstDate: new DateTime.now(),
                                        initialLastDate: (new DateTime.now())
                                            .add(new Duration(days: 7)),
                                        firstDate: new DateTime(2015),
                                        lastDate: new DateTime(
                                            DateTime.now().year + 2));
                                if (picked != null && picked.length == 2) {
                                  print(picked);
                                  data.setstartEndDates(picked);
                                }
                              },
                              child: new Icon(Icons.calendar_today,
                                  color: Colors.white)),
                        ])))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 0, 0, 40),
                    child: Image.asset(
                      'assets/images/timeCalendar.png',
                      height: 180,
                      width: 230,
                    ),
                  )
                ],
              ),
              Container(
                height: 25,
                child: RaisedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => DSCompetence(),
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
                      constraints: BoxConstraints(maxWidth: 120, maxHeight: 25),
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
        ),
      ),
    );
  }
}
