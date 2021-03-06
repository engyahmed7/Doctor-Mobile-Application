// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:doctor_project/Welcome.dart';
import 'package:doctor_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'my_flutter_app_icons.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = new TextEditingController();

  TextEditingController email = new TextEditingController();

  TextEditingController desease = new TextEditingController();

  TextEditingController description = new TextEditingController();

  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   enableFeedback: true,
      //   backgroundColor: Colors.greenAccent[400],
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),

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
        title: Text('Login'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(MyFlutterApp.dot_3),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage("images/face.jpg")),
              accountName: Text("Engy"),
              accountEmail: Text("engya306@gmail.com")),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DoctorList()));
            },
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text("Notification"),
            leading: Icon(Icons.notification_add),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help_center_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.event_available_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.output),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Welcome()));
            },
          ),
        ]),
      ),
      body: ListView(
        children: [
          Container(
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
                        fontSize: 25,
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
                    controller: name,
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
                    controller: email,
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
                    controller: desease,
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
                    controller: description,
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Describe Here'),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                SizedBox(
                  width: 400,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DoctorList()));
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
                Padding(padding: EdgeInsets.only(bottom: 40)),
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
