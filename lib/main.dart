// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_web_libraries_in_flutter, unused_import, must_be_immutable, use_key_in_widget_constructors, deprecated_member_use
import 'package:doctor_project/Notification.dart';
import 'package:doctor_project/Welcome.dart';
import 'package:doctor_project/login.dart';
import 'package:doctor_project/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'model/doctor.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        backgroundColor: Colors.greenAccent[400],
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('Doctor List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(MyFlutterApp.dot_3),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
      body: ListView(
          children: doctors.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width,
            height: size.height / 5,
            // color: Colors.blue,
            child: doctorCard(e),
          ),
        );
      }).toList()),
    );
  }

  Widget doctorCard(Doctor doctor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DoctorDetails(doctor)));
      },
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: AssetImage(doctor.urlPhoto),
                radius: 50,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      doctor.rating,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                ),
                Text(
                  doctor.speciality,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      doctor.address,
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap: (index) {
        setState(() {
          _selectedItem = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DoctorList(),
              ));
            },
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.greenAccent[400],
      // unselectedItemColor: Colors.black,
    );
  }
}

class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        backgroundColor: Colors.greenAccent[400],
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text('Doctor Details'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
        actions: [
          IconButton(
            icon: Icon(MyFlutterApp.dot_3),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(doctor.urlPhoto),
                        radius: 50,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 12)),
                        Text(
                          doctor.speciality,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 12)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text("5.0")
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                  // color: Colors.black,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "Short Description",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(doctor.shortDescription,
                    style: TextStyle(fontSize: 19, color: Colors.blueGrey)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("Location",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 14)),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.blueGrey),
                    Text(doctor.address,
                        style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "images/map.jpg",
                    width: 250,
                    height: 250,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 400,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Notify(doctor),
                        ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Request",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      color: Colors.greenAccent[400],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNavBar() {
    int _selectedItem = 0;
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap: (index) {
        _selectedItem = index;
        // setState(() {
        //   _selectedItem = index;
        // });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.greenAccent[400],
    );
  }
}


// class DoctorList extends StatefulWidget {
//   DoctorList({Key? key}) : super(key: key);

//   @override
//   State<DoctorList> createState() => _DoctorListState();
// }

// class _DoctorListState extends State<DoctorList> {
//   List<String> names = [
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati",
//     "Dudung Sokmati"
//   ];
//   List<String> rate = [
//     "4.9",
//     "4.2",
//     "5.0",
//     "4.8",
//     "4.8",
//     "4.8",
//     "4.8",
//     "4.8",
//     "4.8",
//     "4.8",
//     "4.8"
//   ];
//   List<String> value = [
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist",
//     "Eye specialist"
//   ];

//   List<String> location = [
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn",
//     "St.Bronxlyn"
//   ];
//   List<String> images = <String>[
//     ("images/1.webp"),
//     ("images/2.webp"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//     ("images/3.jpg"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.green[600],
//         title: Text(
//           "Doctor List ",
//           style: TextStyle(fontSize: 20),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {},
//           color: Colors.white,
//         ),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.workspaces_filled))
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications), label: 'Notification'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.schedule), label: 'Schedule'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person_rounded), label: 'Profile'),
//         ],
//         showSelectedLabels: true,
//         selectedItemColor: Colors.brown,
//         unselectedItemColor: Colors.blueGrey[300],
//         currentIndex: 2,
//         showUnselectedLabels: true,
//       ),
//       body: ListView.builder(
//         itemCount: names.length,
//         shrinkWrap: true,
//         itemBuilder: (context, index) => Container(
//           width: MediaQuery.of(context).size.width,
//           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => DoctorDetails(),
//               ));
//             },
//             child: Card(
//               margin: EdgeInsets.only(top: 15),
//               elevation: 5,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 120,
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   //mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: 85,
//                       height: 85,
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage(images[index]),
//                       ),
//                     ),
//                     Padding(padding: EdgeInsets.only(left: 10)),
//                     Column(
//                       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           // crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Padding(padding: EdgeInsets.only(left: 20)),
//                             Text(
//                               names[index],
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                             Padding(padding: EdgeInsets.only(left: 20)),
//                             Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 25,
//                             ),
//                             Padding(padding: EdgeInsets.only(left: 20)),
//                             Text(
//                               rate[index],
//                             ),
//                             Padding(padding: EdgeInsets.only(left: 20)),
//                           ],
//                         ),
//                         Text(
//                           value[index],
//                           style: TextStyle(color: Colors.green),
//                         ),
//                         Row(
//                           //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Icon(
//                               Icons.location_on_outlined,
//                             ),
//                             Text(location[index])
//                           ],
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DoctorDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green[600],
//         title: Text(
//           "Doctor Details ",
//           style: TextStyle(fontSize: 20),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.workspaces_filled))
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications), label: 'Notification'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.schedule), label: 'Schedule'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person_rounded), label: 'Profile'),
//         ],
//         showSelectedLabels: true,
//         selectedItemColor: Colors.brown,
//         unselectedItemColor: Colors.blueGrey[300],
//         currentIndex: 2,
//         showUnselectedLabels: true,
//       ),
//       body: Container(
//         // width: MediaQuery.of(context).size.width,
//         // height: 120,
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Container(
//             //   width: 150,
//             //   height: 150,
//             //   child: CircleAvatar(
//             //     backgroundImage: AssetImage("images/3.jpg"),
//             //   ),
//             // ),
//             Padding(padding: EdgeInsets.only(left: 10)),
//             Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Padding(padding: EdgeInsets.only(left: 20)),
//                     Text(
//                       "Dudung Sokmati",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     ),
//                     Padding(padding: EdgeInsets.only(left: 20)),
//                   ],
//                 ),
//                 Text(
//                   " eye",
//                   style: TextStyle(color: Colors.green),
//                 ),
//                 Row(
//                   //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     Icon(Icons.star, color: Colors.amber),
//                     Icon(Icons.star, color: Colors.amber),
//                     Icon(Icons.star, color: Colors.amber),
//                     Icon(Icons.star_border),
//                     Padding(padding: EdgeInsets.only(left: 10)),
//                     Text("4.2"),
//                   ],
//                 ),
//                 // Padding(padding: EdgeInsets.only(top: 220)),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Divider(
//                       thickness: 49,
//                     ),
//                     Text("data")
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 