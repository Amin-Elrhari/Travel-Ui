import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/Places_model.dart';
import 'details_widget.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        )),
        child: Column(
          children: List.generate(nearbyPlaces.length, (index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: SizedBox(
                height: 135.h,
                width: double.infinity,
                child: Card(
                  elevation: 0.4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.w),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imageUrl: nearbyPlaces[index].image,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.w),
                            child: Image.asset(
                              nearbyPlaces[index].image,
                              height: double.infinity,
                              width: 130.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sea of Peace",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Portic Team",
                                    style: GoogleFonts.montserrat()),
                                const SizedBox(height: 10),
                                // DISTANCE WIDGET
                                // const Distance(),
                                const Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14.sp,
                                    ),
                                    Text(
                                      "4.5",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                      ),
                                    ),
                                    const Spacer(),
                                    RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        text: "\$22",
                                        children: const [
                                          TextSpan(
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                            ),
                                            text: "/ Person",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    ]);
  }
}
