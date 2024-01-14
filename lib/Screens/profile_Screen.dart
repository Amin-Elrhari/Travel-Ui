import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Screens/home.dart';
import 'package:flutter_travel_app/Screens/passeword.dart';
import 'package:flutter_travel_app/Widget/card.dart';

import '../Widget/CostumText.dart';
import '../Widget/griddashboard.dart';
import '../navigation/main_page.dart';



class Profil_Page extends StatefulWidget {
  const Profil_Page({super.key});

  @override
  State<Profil_Page> createState() => _Profil_PageState();
}

class _Profil_PageState extends State<Profil_Page> {
   bool turned=true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:SafeArea(

          child: Column(

            children: [
              Padding(

                padding:  EdgeInsets.only(left: 20.sp,top: 50),
                //child: CircleAvatar(foregroundImage: AssetImage('assets/image/img.png'),


                child: CircleAvatar(
                  radius: 62,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/profil.png'),

                ),
              ),


              Padding(
                  padding:  EdgeInsets.only(left: 11.sp,top: 0.sp,right: 10.sp),
                  child: Column(
                    children: [
                      Text(
                        'A BERAHHOU',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      Text(
                        'a.berahhou@gmail.com',
                        style: TextStyle(
                            fontSize: 15.sp,

                            color: Colors.grey.shade500
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            turned = !turned;
                          });
                        },
                        icon: Icon(
                          turned == true
                              ? Icons.notifications_active
                              : Icons.notifications_off,
                          size: 30.sp,
                          color:  turned == true?Color(0xFF009F79):Color(0xFFFF5000),// Change the icon color
                        ),
                      ),

                    ],
                  )
              ),

              SizedBox(height: 15.h,),
              GridDashboard(),

            ],
          ),
        ),

    );
  }
}





