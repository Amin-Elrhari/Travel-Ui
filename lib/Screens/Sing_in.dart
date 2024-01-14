import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/cubit/app_cubit.dart';
import 'package:flutter_travel_app/navigation/main_page.dart';

import '../Widget/CostumText.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50),
                        const Image(
                          image: AssetImage("assets/images/logo.png"),
                          height: 172,
                          width: 306,
                        ),
                        CustomText(
                          text: "Visit Morocco",
                          fontSize: 30,
                          color: Colors.black,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomText(
              text: "Veuillez saisir les informations de",
              fontSize: 17,
              color: Colors.black,
              alignment: Alignment.center,
            ),
            CustomText(
              text: "  votre compte pour vous connecter",
              fontSize: 17,
              color: Colors.black,
              alignment: Alignment.center,
            ),
            SizedBox(height: 30),
            Column(
              children: [
                TextFormField(
                    onSaved: (value) {},
                    validator: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey.shade400,
                      ),
                      hintText: "E-mail adresse",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                    )
                )
              ],
            ),
            SizedBox(height: 25),
            Column(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey.shade400,
                    ),
                    hintText: "Mot de passe",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                BlocProvider.of<AppCubits>(context).getData();
              },
              child: CustomText(
                text: "Mot de passe oublié ?",
                fontSize: 17.sp,
                color: Colors.blueGrey,
                alignment: Alignment.topRight,
              ),
            ),
            30.verticalSpace,
            TextButton(
              onPressed: () {
                //Get.to(SecondScreen());
                //print(controller.counter);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (contex) => Main_page()));
              },
              child: CustomText(
                text: 'Se Connecter',
                color: Colors.blueGrey,
                fontSize: 15,
                alignment: Alignment.center,
              ),
              style: TextButton.styleFrom(
                maximumSize: Size(302.w, 60.h),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
