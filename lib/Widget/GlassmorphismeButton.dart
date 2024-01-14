import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassmorphismButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  GlassmorphismButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 130.w, // Set the desired width for your button
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 5.sp,
              blurRadius: 7.sp,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF5DBEA3), Color(0xFF55C2DA)],
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}