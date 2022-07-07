import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/stadium/stadium_model.dart';
import 'package:newwapp/features/stadium/states.dart';

import '../../core/dialoges/toast.dart';

class StadiumCubit extends Cubit<StadiumStates> {
  StadiumCubit() : super(LoadingStadium());

  static StadiumCubit get(context) => BlocProvider.of(context);


  TextEditingController controllerStadiumPriceAm=TextEditingController();
  TextEditingController controllerStadiumName=TextEditingController();
  TextEditingController controllerStadiumPricePm=TextEditingController();
  TextEditingController controllerClientName=TextEditingController();


  FirebaseFirestore firestor=FirebaseFirestore.instance;


  addStadium(StadiumModel stadiumModel)async{
    emit(LoadingStadium());
    var clientId =  firestor.collection('Stadium').doc().id;

    await firestor.collection('Stadium').doc(clientId).set(stadiumModel.toJson(clientId)).then((value) => {
    })
        .catchError((onError) {
      print(onError);

      emit(AddStadiumFailure());

      showToast(msg: onError.toString(), state: ToastedStates.WARNING);
    });
    showToast(msg: 'Stadium is added', state: ToastedStates.SUCCESS);

    emit(AddStadiumSuccess());

  }



}
