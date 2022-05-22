// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:doctor_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: bottomNavBar(),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: Text(
                "Welcome To Our Application",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green),
              ),
            ),
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'name',
                    hintText: 'Your name',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(),
                    hintText: 'example@gmail.com'),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              "Desease",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'What is your illness'),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              "Description (Optional)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 300,
              child: TextFormField(
                minLines: 3,
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Describe Here'),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 400,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoctorList()));
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
          ],
        ),
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
