import 'package:code_blooded/Availability.dart';
import 'package:code_blooded/Checklist.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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

// import 'package:code_blooded/Availability.dart';
// import 'package:code_blooded/Checklist.dart';
// import 'package:flutter/material.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';

// class FullPlan extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<FullPlan> {
//   int _currentIndex = 0;
//   int _counter = 0;

//   List<Widget> _widgetOptions = <Widget>[
//     Availability(),
//     Checklist(),
//     Availability(),
//     Checklist(),
//     Text('Messgaes Screen'),
//     Text('Profile Screen'),
//   ];

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     WidgetBuilder builder;
//     print(_currentIndex);
//     switch (_currentIndex) {
//       case 0:
//         builder = (BuildContext context) => Availability();
//         break;

//       case 1:
//         builder = (BuildContext context) => FullPlan();
//         break;

//       case 2:
//         builder = (BuildContext context) => Checklist();
//         break;
//     }
//     return Scaffold(
//         body: Center(
//           // children: <Widget>[
//           child: _widgetOptions.elementAt(_currentIndex),
//           //   Column(
//           //     children: [
//           //       Row(
//           //         mainAxisAlignment: MainAxisAlignment.start,
//           //         crossAxisAlignment: CrossAxisAlignment.start,
//           //         children: [
//           //           Padding(
//           //             padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
//           //             child: Container(
//           //               width: 300.0,
//           //               height: 50.0,
//           //               child: Column(
//           //                 mainAxisAlignment: MainAxisAlignment.start,
//           //                 children: [
//           //                   SizedBox(
//           //                     width: 330,
//           //                     height: 50,
//           //                     child: Text(
//           //                       "Full Plan",
//           //                       style: TextStyle(
//           //                           fontSize: 20,
//           //                           fontWeight: FontWeight.bold,
//           //                           color: Color(0xff121212),
//           //                           fontFamily: 'Source Sans Pro'),
//           //                     ),
//           //                   )
//           //                 ],
//           //               ),
//           //             ),
//           //           ),
//           //           RaisedButton(
//           //             onPressed: () => Navigator.push(
//           //                 context,
//           //                 MaterialPageRoute(
//           //                   builder: (BuildContext context) => Checklist(),
//           //                 )),
//           //             shape: RoundedRectangleBorder(
//           //                 borderRadius: BorderRadius.circular(80.0)),
//           //             padding: EdgeInsets.all(0.0),
//           //             child: Ink(
//           //               decoration: BoxDecoration(
//           //                   gradient: LinearGradient(
//           //                     colors: [Color(0xff374ABE), Color(0xff64B6FF)],
//           //                     begin: Alignment.centerLeft,
//           //                     end: Alignment.centerRight,
//           //                   ),
//           //                   borderRadius: BorderRadius.circular(30.0)),
//           //               child: Container(
//           //                 constraints:
//           //                     BoxConstraints(maxWidth: 120.0, maxHeight: 25.0),
//           //                 alignment: Alignment.center,
//           //                 child: Text(
//           //                   "Next",
//           //                   textAlign: TextAlign.center,
//           //                   style: TextStyle(color: Colors.white),
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ],
//           //       ),
//           //       Padding(
//           //         padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//           //         child: Row(
//           //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //           children: [
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/arrays.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Arrays'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/linkedlists.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Linked Lists'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/graphs.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Graphs'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//           //         child: Row(
//           //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //           children: [
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/hashmaps.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Hash Maps'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/Sorting.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Sorting'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/strings.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Strings'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//           //         child: Row(
//           //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //           children: [
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/trees.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Trees'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/Sorting.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Sorting'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //             Container(
//           //               height: 180,
//           //               width: 120,
//           //               child: Card(
//           //                 semanticContainer: true,
//           //                 clipBehavior: Clip.antiAliasWithSaveLayer,
//           //                 shape: RoundedRectangleBorder(
//           //                   borderRadius: BorderRadius.circular(10.0),
//           //                 ),
//           //                 elevation: 4,
//           //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //                 child: Column(
//           //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //                     children: [
//           //                       Image.network(
//           //                         'assets/images/strings.png',
//           //                         fit: BoxFit.fitWidth,
//           //                       ),
//           //                       const ListTile(
//           //                         title: Text('Strings'),
//           //                         subtitle: Text('3 Days'),
//           //                       ),
//           //                     ]),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ],
//         ),
//         bottomNavigationBar: BottomNavyBar(
//             selectedIndex: _currentIndex,
//             showElevation: true,
//             itemCornerRadius: 24,
//             curve: Curves.easeIn,
//             onItemSelected: (index) => setState(() => _currentIndex = index),
//             items: <BottomNavyBarItem>[
//               BottomNavyBarItem(
//                 icon: Icon(Icons.apps),
//                 title: Text('Home'),
//                 activeColor: Colors.red,
//                 textAlign: TextAlign.center,
//               ),
//               BottomNavyBarItem(
//                 icon: Icon(Icons.people),
//                 title: Text('Users'),
//                 activeColor: Colors.purpleAccent,
//                 textAlign: TextAlign.center,
//               ),
//               BottomNavyBarItem(
//                 icon: Icon(Icons.message),
//                 title: Text(
//                   'Messages test for mes teset test test ',
//                 ),
//                 activeColor: Colors.pink,
//                 textAlign: TextAlign.center,
//               ),
//               BottomNavyBarItem(
//                 icon: Icon(Icons.settings),
//                 title: Text('Settings'),
//                 activeColor: Colors.blue,
//                 textAlign: TextAlign.center,
//               )
//             ]));
//   }
// }
