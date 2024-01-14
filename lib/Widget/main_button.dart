import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Widget/CostumText.dart';
class MainButton extends StatelessWidget {
  final String  text;
  final Color color;
  final double ? width;
  final bool ? isResponsive;
  const MainButton({super.key,
    required this.text,
    required this.color,
    this.width,
    this.isResponsive
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.shade300
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: text,
            color: color,
            fontSize: 15.sp,
            Bold: true,
            alignment: Alignment.center,

          ),
          Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 25.sp)
        ],
      ),
    );
  }
}
