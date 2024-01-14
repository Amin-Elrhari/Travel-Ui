import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Widget/CostumText.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/Search_screen.dart';
import '../Screens/passeword.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Change Password",
      img: "assets/images/changePass.png");

  Items item2 = new Items(
    title: "Change profile\npicture",
    img: "assets/images/changeP.png",
  );
  Items item3 = new Items(
    title: "Conditions ",
    img: "assets/images/conditions.png",
  );
  Items item4 = new Items(
    title: "About Us ",
    img: "assets/images/aboutus.png",
  );
  Items item5 = new Items(
    title: "FeedBack",
    img: "assets/images/Feedback.png",
  );
  Items item6 = new Items(
    title: "Logout",
    img: "assets/images/logout.png",
  );
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFFFFFFFF;

    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18.sp,
        mainAxisSpacing: 18.sp,
        children: myList.map((data) {
          return InkWell(
            onTap: () {
              print("Tapped on card with title: ${data.title}");
              String lowercaseTitle = data.title.trim().toLowerCase();
              if (lowercaseTitle == "change password") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mot_de_passe(),
                  ),
                );
              } else if (lowercaseTitle == "conditions") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              }
            },

            child: Container(
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 70.w,
                      height: 70.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text:data.title,
                          color: Colors.blueGrey.shade200,
                          fontSize: 15.sp,
                          Bold: true,
                       alignment: Alignment.center,
                      ),


                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;

  String img;
  Items({
    required this.title,
    required this.img,
  });
}
