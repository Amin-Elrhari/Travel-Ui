import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Widget/Book_details.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/CostumText.dart';
import '../Widget/TextfieldDecoration.dart';
import '../Widget/app_buttons.dart';
import '../navigation/main_page.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  DateTime date_A = new DateTime(2023);
  DateTime date_D = new DateTime(2026);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/book.jpg"),
                  // Use the passed imageUrl
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Main_page()));
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
                          "Book Hotel",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black54.withOpacity(0.8),
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
                          'Book hotel as you need ',
                          style: GoogleFonts.montserrat(
                            fontSize: 15.sp,
                            color: Colors.grey.shade400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          CustomText(
                              text: "City",
                              Bold: true,
                              color: Colors.blueGrey.withOpacity(0.8)),
                          SizedBox(
                            height: 15.h,
                          ),
                          TextFieldDecoration(
                            prefix: Icon(
                              Icons.location_on,
                              color: Colors.teal.withOpacity(0.8),
                            ),
                            obscure: false,
                            hint: 'Meknes,Maroc',
                            color: Colors.grey.shade400,
                            focusColor: Colors.blueGrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            child: Column(
                              children: [
                                CustomText(
                                  text: "Arrivale",
                                  Bold: true,
                                  fontSize: 16,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                ),
                                InkWell(
                                  onTap: () async {
                                    DateTime? newDate_A = await showDatePicker(
                                        context: context,
                                        initialDate: date_A,
                                        firstDate: DateTime(2023),
                                        lastDate: DateTime(2030));
                                    if (newDate_A != null) {
                                      setState(() {
                                        date_A = newDate_A;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40.h,
                                    width: 110.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        CustomText(
                                          text:
                                              "${date_A.day}/${date_A.month}/${date_A.year}",
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 13,
                                          alignment: Alignment.center,
                                          Bold: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child: Column(
                              //
                              children: [
                                CustomText(
                                  text: "Departure",
                                  Bold: true,
                                  fontSize: 16,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                ),
                                InkWell(
                                  onTap: () async {
                                    DateTime? newDate_A = await showDatePicker(
                                        context: context,
                                        initialDate: date_A,
                                        firstDate: DateTime(2023),
                                        lastDate: DateTime(2030));
                                    if (newDate_A != null) {
                                      setState(() {
                                        date_D = newDate_A;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40.h,
                                    width: 110.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        CustomText(
                                          text: date_A.isBefore(date_D)
                                              ? "${date_D.day}/${date_D.month}/${date_D.year}"
                                              : "Invalid date",
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 13,
                                          alignment: Alignment.center,
                                          Bold: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    TextButton(

                      onPressed: (){
                        //Get.to(SecondScreen());
                        //print(controller.counter);
                        if(date_A.isBefore(date_D)){
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
                              ),
                              isScrollControlled: false,
                              context: context,
                              builder: (BuildContext context){
                            return BookDetails();
                          },
                          );
                        }

                      },
                      child:CustomText(
                        text: 'Booking',
                        color: Colors.blueGrey,
                        fontSize: 15,
                        alignment: Alignment.center,
                      ),
                      style: TextButton.styleFrom(
                        maximumSize: Size(222.w, 50.h),
                        backgroundColor: Colors.teal.shade50,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),



                      ),


                    )
                  ],

                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
