// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'model/doctor.dart';
import 'my_flutter_app_icons.dart';

class Notify extends StatelessWidget {
  //String name, email, desease, description;
  Doctor doctor;
  Notify(this.doctor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        children: [
          SpeedDialChild(child: Icon(Icons.copy), label: 'copy'),
          SpeedDialChild(child: Icon(Icons.email), label: 'email'),
          SpeedDialChild(child: Icon(Icons.share), label: 'share'),
        ],
        backgroundColor: Color.fromARGB(255, 70, 217, 77),
        overlayColor: Colors.grey,
        spaceBetweenChildren: 15,
        spacing: 10,
        closeManually: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('Notification'),
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
      body: ListView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Icon(
                  Icons.check_circle_outline_outlined,
                  size: 150,
                  color: Colors.green,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Your Request Has Been Approved",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                alignment: Alignment.center,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing. ",
                  // textAlign: TextAlign.center,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                child: Text(
                  "Request Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  "Doctor Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  doctor.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  "Doctor Address",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  doctor.address,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  "Doctor Rate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  doctor.rating,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey),
                ),
              ),
            ]),
      ]),
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
