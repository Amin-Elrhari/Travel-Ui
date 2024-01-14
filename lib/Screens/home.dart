

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_travel_app/Screens/Booking_screen.dart';
import 'package:flutter_travel_app/Screens/profile_Screen.dart';
import 'package:flutter_travel_app/Widget/details_widget.dart';
import 'package:flutter_travel_app/cubit/app_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/Place.dart';
import '../Widget/Tourist_categories.dart';
import '../Widget/tourist_details.dart';
import '../model/Places_model.dart';
import '../model/Touriste_categorie_modal.dart';
import 'Search_screen.dart';



class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 40.sp),
            Container(
              margin: const EdgeInsets.only(left: 20) ,
              child: Text("Discover",style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp
              ),),
            ),
            SizedBox(height: 30.sp),


              Container(
                padding: EdgeInsets.only(left: 17.w),
                height: 300.sp,
                width: double.maxFinite,
                child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount:nearbyPlaces.length,
                     itemBuilder: (BuildContext context, int index) {
                       return GestureDetector(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => DetailPage(
                                 imageUrl: nearbyPlaces[index].image,
                               ),
                             ),
                           );
                         },
                         child: Container(
                           margin: EdgeInsets.only(right: 17.w,top: 10),
                           width: 200.w,
                           height: 300.h,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.white,
                               image: DecorationImage(
                                   image: AssetImage(
                                       nearbyPlaces[index].image
                                   ), fit :BoxFit.cover
                               )
                           ),

                         ),
                       );
                     },

                   ),


              ),


            SizedBox(height: 30.sp,),
            TouristPlaces(),
            SizedBox(height: 30.h),
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore more ",style: GoogleFonts.montserrat(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Text("see all",
                  style: TextStyle(
                    color: Colors.grey.shade100.withOpacity(0.5)
                  ),),
                ],
              ),
            ),
            SizedBox(height: 30.sp),
            NearbyPlaces()
          ],
        ),
      ])
    );
  }
}


class CircleTab extends Decoration{
  final Color color ;
  double radius;
  CircleTab({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color , radius:radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color ;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint =Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset =Offset(configuration.size!.width/2.sp-radius/2.sp,configuration.size!.height.sp-10);

    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}

