import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel_app/Screens/WelcomScreen.dart';
import 'package:flutter_travel_app/Screens/home.dart';
import 'package:flutter_travel_app/cubit/app_cubit.dart';
import 'package:flutter_travel_app/cubit/cubit_states.dart';
import 'package:flutter_travel_app/navigation/main_page.dart';
class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context,state){
          if (state is WelcomeState){
            return WelcomeScreen();
          }if (state is LoadedState){
            return Home_Page();
          }if (state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }else {
            return Container();
          }
        },
      ),
    );
  }
}
