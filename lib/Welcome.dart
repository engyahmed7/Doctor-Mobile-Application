// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:doctor_project/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Telemedicine",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      fillColor: Colors.black,
                      iconColor: Colors.black,
                      focusColor: Colors.black,
                      prefixIcon: Icon(Icons.email_outlined),
                      // hintText: 'Email Address',
                      labelText: 'Email Address',
                      hintText: 'Email Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black, width: 30)),
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        labelText: 'Password',
                        hoverColor: Colors.blue,
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.all(20),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 300,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.all(20),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
