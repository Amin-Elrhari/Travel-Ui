import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Screens/Sing_in.dart';
import 'package:flutter_travel_app/Widget/GlassmorphismeButton.dart';

import '../Widget/CostumText.dart';
import 'Sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = ["fes.jpg", "marrakech.jpeg", "essaouira.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + images[index]),
                    fit: BoxFit.cover,
                    opacity: 0.7),
              ),
              child: Material(
                color: Colors.transparent,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 65.sp, horizontal: 25.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Enjoy",
                          color: Colors.white,
                          alignment: Alignment.center,
                          fontSize: 35.sp,
                          letterSpace: 1.5,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        CustomText(
                          text: "In Morocco",
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 35.sp,
                          alignment: Alignment.center,
                          letterSpace: 1.5,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                            "Welcome to Morocco, where ancient traditions harmoniously blend with modern vibrancy, and where the warm embrace of our people will make you feel at home in this land of diverse landscapes, rich culture, and timeless history",
                            style: TextStyle(
                              fontSize: 16,
                              color: index == 2
                                  ? Colors.blueGrey.withOpacity(0.7)
                                  : index == 1
                                      ? Color(0xFFF2F2F2).withOpacity(0.7)
                                      : Color(0xFF5B726A).withOpacity(0.7),
                              letterSpacing: 1.2,
                            )),
                        SizedBox(
                          height: 270.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GlassmorphismButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Singin();
                                  }));
                                },
                                text: "Sign in "),
                            SizedBox(
                              width: 12.w,
                            ),
                            GlassmorphismButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return SignUp();
                                      }));
                                }, text: "Sign up")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
