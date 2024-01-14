import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Widget/CostumText.dart';
class AppButton extends StatelessWidget {
  final Color color ;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size ;
  final Color borderColor ;
  bool? isIcon;
   AppButton(
      {super.key,
        this.text,
        this.icon,
        required this.color,
        required this.backgroundColor,
        required this.size,
        required this.borderColor,
        this.isIcon=false
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height:size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: 1.sp,
        )
      ),
      child: isIcon==false?CustomText(
        text: text!,
        color:color,
        alignment: Alignment.center,
        Bold: true
      ):Icon(icon!,color: color!,),
    );
  }
}
