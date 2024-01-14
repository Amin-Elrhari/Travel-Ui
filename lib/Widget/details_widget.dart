import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/navigation/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CostumText.dart';
import 'app_buttons.dart';

class DetailPage extends StatefulWidget {
  final String imageUrl;

  DetailPage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gotten_stars = 4;
  int selectedIndex = -1;
  bool isClicked = true;
  bool changeIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imageUrl), // Use the passed imageUrl
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50.sp,
              left: 20.sp,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Main_page()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320.sp,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fes Hotel",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black54.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "\$ 120 ",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF5DBEA3),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey.shade400,
                            size: 15.sp,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Fes Maroc',
                            style: GoogleFonts.montserrat(
                              fontSize: 15.sp,
                              color: Colors.grey.shade400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star, color: index < gotten_stars ? Color(0xFFFFCD3C) : Colors.grey.shade400);
                            }),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "4.0",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: "People",
                        fontSize: 20.sp,
                        Bold: true,
                        color: Colors.black.withOpacity(0.8),
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        text: "Number of people in your group",
                        fontSize: 15,
                        Bold: false,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 5.sp,
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  isClicked = !isClicked;
                                });
                              },
                              child: AppButton(
                                color: selectedIndex == index ? Colors.white : Colors.black,
                                backgroundColor: selectedIndex == index ? Colors.black : Colors.grey.shade200.withOpacity(0.8),
                                size: 50.sp,
                                borderColor: selectedIndex == index ? Colors.black : Colors.grey.shade200.withOpacity(0.8),
                                text: "${index + 1 }",
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text: "Description ",
                        fontSize: 20,
                        Bold: true,
                        color: Colors.black,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        text: "Fès est une ville fascinante qui offre une plongée profonde dans l'histoire, la culture et la tradition marocaine. Elle est un incontournable pour les voyageurs qui souhaitent explorer le Maroc authentique.",
                        fontSize: 14,
                        Bold: false,
                        color: Colors.black54.withOpacity(0.8),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Row(
                children: [
                  AppButton(
                    color: Colors.blueGrey,
                    backgroundColor: Colors.white,
                    size: 60,
                    borderColor: Colors.blueGrey,
                    isIcon: true,
                    icon: Icons.favorite_outline,
                  ),
                  SizedBox(width: 15.w),
                  TextButton(
                    onPressed: () {
                      // Handle book now button click
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Book Now ',
                          color: Colors.white,
                          fontSize: 15,
                          alignment: Alignment.centerLeft,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      maximumSize: Size(255, 60),
                      backgroundColor: Colors.blueGrey.withOpacity(0.8),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
