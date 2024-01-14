
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_travel_app/Widget/CostumText.dart';

import '../model/Places_model.dart';
import '../model/Touriste_categorie_modal.dart';
import '../model/search_model.dart';
import 'WelcomScreen.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  static List<PlacesModel> places=[
    PlacesModel(
      Name :"marrakech",
      image: "assets/images/marrakech.jpeg",
    ),
    PlacesModel(
      Name: "ouarzazate",
      image: "assets/images/ouarzazate.jpg",
    ),
    PlacesModel(
      Name: "Fes",
      image: "assets/images/fes.jpg",
    ),
    PlacesModel(
      Name: "Venisse",
      image: "assets/images/bg.jpg",
    ),
    PlacesModel(
      Name: "Essaouira",
      image: "assets/images/essaouira.jpeg",
    ),
    PlacesModel(
      Name: "Paris",
      image: "assets/images/city3.jpg",
    ),
    PlacesModel(
      Name: "SomeWhere",
      image: "assets/images/city6.jpg",
    ),
  ];

  List<PlacesModel> display_list=List.from(places);

  void updateListe(String value ){

      setState(() {
        display_list= places.where((element) => element.Name!.toLowerCase().contains(value)).toList();
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              CustomText(
              text: "Search for The Perfect Trip",
              fontSize: 25,
              Bold: true,
              color: Colors.black.withOpacity(0.8),
            ),
            SizedBox(height: 20.h,),
              TextField(
                onChanged: (value)=>updateListe(value),
                decoration: InputDecoration(
                  prefixIcon:  Icon(
                    Icons.search_outlined,
                    color: Colors.grey.shade400,

                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,


                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(15)

                  ),


                )
              ),
              SizedBox(height:20.h ,),
              SizedBox(
               height: 40,
                child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(

                  onTap: () {
                    switch (index){
                      case 0:
                        updateListe("es");
                        break;
                      case 1:
                        updateListe("ss");
                        break;
                      case 2:
                        updateListe("m");
                        break;
                      case 3:
                        updateListe("paris" );
                        break;
                      case 4:
                        updateListe("ouar");
                        break;

                    }
                  },
                  child: Chip(
                    label: Text(touristPlaces[index].name),
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage(touristPlaces[index].image),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0.4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 10)),
              itemCount: touristPlaces.length,
            ),
          ),

              Expanded(
                child: display_list.length == 0
                    ? Center(
                  child: CustomText(
                    text: "No result Found",
                    fontSize: 16,
                    Bold: true,
                    color: Colors.blueGrey.shade400,
                  ),
                )
                    : ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100.0.h,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle card tap here
                              },
                              child: Card(
                                elevation: 0.4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12.0),
                                        child: Image.asset(
                                          display_list[index].image,
                                          height: double.infinity,
                                          width: 130.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${display_list[index].Name}",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: GestureDetector(
                                onTap: () {
                                  // Handle the Positioned widget tap here
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    display_list[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 0, // Adjust the left value to center the text
                              right: 0, // Also set right to 0 to ensure it spans the full width
                              child: Center(
                                child: Text(
                                  "${display_list[index].Name}",
                                  style: TextStyle(
                                    color: Color(0xFFFFFFF0),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1.5
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}

