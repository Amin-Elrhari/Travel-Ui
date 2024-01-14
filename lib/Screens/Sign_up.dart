import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/CostumText.dart';
import 'Sing_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection:  Axis.vertical,
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
                        SizedBox(height: 20),
                        CustomText(
                          text: "Create Your Account ",
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.5),
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 25.h,),
                        Padding(
                          padding: const EdgeInsets.only(left :15,right : 15),
                          child: TextFormField(

                              onSaved: (value){},
                              validator: (value){},
                              decoration: InputDecoration(
                                hintText: "Name ",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 2
                                  ),
                                  borderRadius: BorderRadius.circular(8),

                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 2
                                    ),
                                    borderRadius: BorderRadius.circular(8)

                                ),


                              )
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: TextFormField(
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
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey, width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                              )
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: TextFormField(
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
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.blueGrey, width: 2),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        TextButton(
                          onPressed: () {
                            //Get.to(SecondScreen());
                            //print(controller.counter);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (contex) => Singin()));
                          },
                          child: CustomText(
                            text: 'Sign Up ',
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
