import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tehnokopi/screens/chart.dart';
import 'package:tehnokopi/screens/home.dart';
import 'package:tehnokopi/screens/profile.dart';
import 'package:tehnokopi/screens/search.dart';
import 'package:tehnokopi/screens/setting.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const ChartPage(),
    const ListPage(),
    const SettingPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.lightGreen,
        onTap: (currentIndex) {
          setState(() {
            this.currentIndex = currentIndex;
          });
        },
        color: Colors.brown,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.list_alt_rounded,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.blueAccent,
          )
        ],
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.lightGreen,
      //   leading: Drawer(
      //     elevation: 0,
      //     child: Container(
      //       color: Colors.lightGreen,
      //       child: const Icon(Icons.menu),
      //     ),
      //   ),
      //   title: const Image(image: AssetImage("assets/logo.png")),
      // ),
      body: screens[currentIndex],
    );
  }
}
