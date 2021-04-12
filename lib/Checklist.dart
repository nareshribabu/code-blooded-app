import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class Checklist extends StatefulWidget {
  @override
  CheckBoxListTile createState() => new CheckBoxListTile();
}

class CheckBoxListTile extends State<Checklist> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  double percent = 0.0;

  double _height;
  double _width;

  @override
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(23, 40, 0, 0),
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
                            "Today's Checklist",
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
                ),
              ]),
          Container(
            height: 400,
            width: 360,
            child: new ListView.builder(
                itemCount: checkBoxListTileModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 80,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: new Container(
                          padding: new EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              new CheckboxListTile(
                                  activeColor: Color(0xff4397eb),
                                  dense: true,
                                  title: new Text(
                                    checkBoxListTileModel[index].title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff121212),
                                        fontFamily: 'Source Sans Pro'),
                                  ),
                                  value: checkBoxListTileModel[index].isCheck,
                                  secondary: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      checkBoxListTileModel[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onChanged: (bool val) {
                                    itemChange(val, index);
                                  })
                            ],
                          ),
                        ),
                      ));
                }),
          ),
          // SizedBox(
          //   height: 40,
          // ),
          // Container(
          //     padding: EdgeInsets.all(10),
          //     child: CircularPercentIndicator(
          //       radius: 120.0,
          //       lineWidth: 10.0,
          //       animation: true,
          //       percent: percent / 100,
          //       center: Text(
          //         percent.toString() + "%",
          //         style: TextStyle(
          //             fontSize: 20.0,
          //             fontWeight: FontWeight.w600,
          //             color: Colors.black),
          //       ),
          //       backgroundColor: Colors.grey[300],
          //       circularStrokeCap: CircularStrokeCap.round,
          //       progressColor: Colors.blue,
          //     )),
          Container(
            height: 200,
            width: 150,
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 10.0,
                  animation: true,
                  percent: percent / 100,
                  center: Text(
                    percent.toString() + "%",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  backgroundColor: Colors.grey[300],
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.blue,
                )),
          ),
        ],
      ),
    ));
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel({this.userId, this.img, this.title, this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/arrays.png',
          title: "Solve 2 Leetcode-Easy Array questions",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/graphs.png',
          title: "Solve 1 Leetcode-Medium Graph question",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/trees.png',
          title: "Solve 1 Leetcode-Hard Trees question",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/linkedlists.png',
          title: "Solve 1 Leetcode-Hard Linked List question",
          isCheck: false),
    ];
  }
}
