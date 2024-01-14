import 'dart:convert';

import 'package:flutter_travel_app/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://";
  Future<List<DataModel>> getInfo() async{
    var apiUrl = '';
    http.Response res=await http.get(Uri.parse(baseUrl+apiUrl));
    try {
      if(res.statusCode==200){
        List<dynamic> list =json.decode(res.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      }else  return <DataModel>[];


    }catch(e){
      print(e);
      return <DataModel>[];
    }
  }
}