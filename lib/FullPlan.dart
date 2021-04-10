import 'package:code_blooded/Availability.dart';
import 'package:flutter/material.dart';

class FullPlan extends StatelessWidget {
  double arrays = 0.0;
  double linkedList = 0.0;
  double strings = 0.0;
  double graphs = 0.0;
  double sorting = 0.0;
  double hashmaps = 0.0;
  double trees = 0.0;
  @override
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
              padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
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
            ),
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
                        const ListTile(
                          title: Text('Arrays'),
                          subtitle: Text('3 Days'),
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
                        const ListTile(
                          title: Text('Linked Lists'),
                          subtitle: Text('3 Days'),
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
                        const ListTile(
                          title: Text('Graphs'),
                          subtitle: Text('3 Days'),
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
                          'assets/images/hashmaps.png',
                          fit: BoxFit.fitWidth,
                        ),
                        const ListTile(
                          title: Text('Hash Maps'),
                          subtitle: Text('3 Days'),
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
                        const ListTile(
                          title: Text('Sorting'),
                          subtitle: Text('3 Days'),
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
                          'assets/images/strings.png',
                          fit: BoxFit.fitWidth,
                        ),
                        const ListTile(
                          title: Text('Strings'),
                          subtitle: Text('3 Days'),
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
                        const ListTile(
                          title: Text('Trees'),
                          subtitle: Text('3 Days'),
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
                        const ListTile(
                          title: Text('Sorting'),
                          subtitle: Text('3 Days'),
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
                          'assets/images/strings.png',
                          fit: BoxFit.fitWidth,
                        ),
                        const ListTile(
                          title: Text('Strings'),
                          subtitle: Text('3 Days'),
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
