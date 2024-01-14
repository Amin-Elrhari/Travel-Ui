import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardsItem extends StatelessWidget {
  final Widget text ;
  final Icon? icon;
  final bool isImage;
  final Image? image;
  const CardsItem({super.key, required this.text,  this.icon, required this.isImage,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.8),
            spreadRadius: 1,


          )
        ]
      ),
      child: Row(
        children: [
          isImage==true ? image! : icon!,
          SizedBox(width: 20.w,),
          text

        ],
      ),
    );
  }
}
