import 'package:code_blooded/Availability.dart';
import 'package:code_blooded/Checklist.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'FullPlanBackend.dart';

// The full plan component represents the main feature of this application
// This is the UI view of all data structures topics, review days and pre-interview
// practice - along with the computed allocated time per topic.

class FullPlan extends StatelessWidget {
  double arrays = 0.0;
  double linkedList = 0.0;
  double strings = 0.0;
  double graphs = 0.0;
  double sorting = 0.0;
  double hashmaps = 0.0;
  double trees = 0.0;

  FullPlanBackend data = new FullPlanBackend();

  @override
  @override
  Widget build(BuildContext context) {
    //Call all the functions here
    print("Gets start here:");
    print(data.getdaysPerWeek());
    print("Start Date:");
    print(data.getstartEndDates()[0]);
    print(data.getstartEndDates()[0].year.runtimeType);

    data.setavailableDays(
        data.getdaysPerWeek(),
        data.getstartEndDates()[0].year,
        data.getstartEndDates()[0].month,
        data.getstartEndDates()[0].day,
        data.getstartEndDates()[1].year,
        data.getstartEndDates()[1].month,
        data.getstartEndDates()[1].day);

    print(data.getavailableDays());

    print("Hours: ${data.getHours()}, Minutes: ${data.getMinutes()}");

    data.setTotalAvailablehours(data.getHours(), data.getMinutes());

    print(data.getTotalAvailableHours());

    print(data.getSliderNumbersArrays());

    data.setListOfTimeForEachTopic();

    print("Time for each topic: ${data.getListOfTimeForEachTopic()}");

    data.setReviewTime();

    print("Review Time: ${data.getReviewTime()}");

    data.setOutputTime();

    print("Output: ${data.getOutputTime()}");

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
                        "Full Plan",
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
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/arrays.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Arrays'),
                          subtitle: Text(
                              "${data.getOutputTime()[0][0].toString()} hr, ${data.getOutputTime()[0][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/linkedlists.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Linked Lists'),
                          subtitle: Text(
                              "${data.getOutputTime()[1][0].toString()} hr, ${data.getOutputTime()[1][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/graphs.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Graphs'),
                          subtitle: Text(
                              "${data.getOutputTime()[2][0].toString()} hr, ${data.getOutputTime()[2][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/strings.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Strings'),
                          subtitle: Text(
                              "${data.getOutputTime()[3][0].toString()} hr, ${data.getOutputTime()[3][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/Sorting.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Sorting'),
                          subtitle: Text(
                              "${data.getOutputTime()[4][0].toString()} hr, ${data.getOutputTime()[4][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/hashmaps.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Hash Maps'),
                          subtitle: Text(
                              "${data.getOutputTime()[5][0].toString()} hr, ${data.getOutputTime()[5][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/trees.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Trees'),
                          subtitle: Text(
                              "${data.getOutputTime()[6][0].toString()} hr, ${data.getOutputTime()[6][1].toString()} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/review.png',
                          fit: BoxFit.fitWidth,
                        ),
                        ListTile(
                          title: Text('Review'),
                          subtitle: Text(
                              "${data.getReviewTime()[0]} hr, ${data.getReviewTime()[1]} mins"),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 180,
                width: 120,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'assets/images/review.png',
                          fit: BoxFit.fitWidth,
                        ),
                        const ListTile(
                          title: Text('Pre-Interview',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          subtitle: Text('1 hr'),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
