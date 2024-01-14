import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Screens/Booking_screen.dart';
import '../Screens/Search_screen.dart';
import '../Screens/home.dart';
import '../Screens/profile_Screen.dart';

class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  List pages = [
    Home_Page(),
    Booking(),
    SearchPage(),
    Profil_Page()
  ];
  int currentindex = 0;

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal.shade200.withOpacity(0.8), // Change this to your preferred color
        buttonBackgroundColor:  Colors.teal.shade400.withOpacity(0.8), // Change this to your preferred color
        height: 40.h,
        onTap: onTap,
        index: currentindex,
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30.sp,color: Colors.white,),
          Icon(Icons.calendar_month_outlined, size: 30.sp,color: Colors.white),
          Icon(Icons.search_outlined, size: 30.sp,color: Colors.white),
          Icon(Icons.person_outline, size: 30.sp,color: Colors.white),
        ],
      ),
    );
  }
}
