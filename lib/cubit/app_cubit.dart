import 'package:bloc/bloc.dart';
import 'package:flutter_travel_app/Sevices/data_services.dart';
import 'package:flutter_travel_app/model/data_model.dart';

import 'cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }

final DataServices data ;
  late final places ;
  void getData()async{
    try{
      emit(LoadingState());
        places=await data.getInfo();
      emit(LoadedState(places));
    }catch(e) {

    }
  }

  detailPage(DataModel data ){
    emit(DetailState(data));
  }

}