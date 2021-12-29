import 'package:bottom_navigation/phone_screen.dart';
import 'package:bottom_navigation/settings_screen.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'business_screen.dart';

class BottomNav extends StatefulWidget {
  //const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List _list = [
    HomeScreen(),
    BusinessScreen(),
    PhoneScreen(),
    SettingsScreen(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.purple),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: Text('Bottom Navigation'),
        backgroundColor: Colors.purple,
      ),*/
      body: Center(
          child: currentIndex > _list.length - 1
              ? Text('Null')
              : _list[currentIndex] ?? Container()),
      //body: Center(child: Text(currentIndex.toString())),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.amber[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'BUSINESS',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'PHONE',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'SETTINGS',
            backgroundColor: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
