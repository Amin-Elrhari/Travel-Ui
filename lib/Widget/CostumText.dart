import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final double letterSpace;
  final bool Bold;


  CustomText({
    this.text='',
    this.fontSize=16,
    this.color = Colors.black,
    this.alignment=Alignment.topLeft,
    this.letterSpace=0,
    this.Bold=true



  } );


  @override
  Widget build(BuildContext context) {
    return Container(
        alignment:alignment,
        child: Text(
            text,
            style:GoogleFonts.montserrat (
                color:color ,
                fontWeight: Bold==true?FontWeight.bold : FontWeight.normal,
                fontSize: fontSize
            )
        )
    );
  }
}