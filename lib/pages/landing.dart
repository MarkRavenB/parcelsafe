// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parcel_app/pages/dashboard.dart';
import 'package:parcel_app/pages/notifications.dart';
import 'package:parcel_app/pages/parcels.dart';
import 'package:parcel_app/pages/settings.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int myCurrentIndex = 0;
  List pages = const [
    DashboardTab(),
    ParcelsTab(),
    NotificationsTab(),
    SettingsTab(),
  ];
  // Different Tabs
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'ParcelSafe',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 32, fontFamily: 'Galada'),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[300],
      body: pages[myCurrentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Parcels'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
