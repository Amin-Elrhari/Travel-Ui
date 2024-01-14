import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Sevices/data_services.dart';
import 'package:flutter_travel_app/Widget/details_widget.dart';
import 'package:flutter_travel_app/cubit/app_cubit.dart';
import 'package:flutter_travel_app/cubit/app_cubit_logics.dart';

import 'Screens/WelcomScreen.dart';
import 'navigation/main_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:  (BuildContext context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Color(0xFFEDF2F6),
              ),
              home:BlocProvider<AppCubits>(
                create: (contex) => AppCubits(
                  data: DataServices()
                ),
                child: AppCubitLogics(),

              )
          );
      },
    );
  }
}
