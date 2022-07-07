import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'appointment_model.dart';
import 'states.dart';

import '../../core/dialoges/toast.dart';
class AppointmentCubit extends Cubit<AppointmentStates> {
  AppointmentCubit() : super(LoadingAppointment());

  static AppointmentCubit get(context) => BlocProvider.of(context);


  TextEditingController controllerNumbersAppoint=TextEditingController();
  TextEditingController controllerNamesAppoint=TextEditingController();
  TextEditingController controllerStartAppoint=TextEditingController();
  TextEditingController controllerEndAppoint=TextEditingController();


  FirebaseFirestore firestor=FirebaseFirestore.instance;
  FirebaseAuth auth=FirebaseAuth.instance;


  addAppointment(AppointmentModel clientsModel)async{
    emit(LoadingAppointment());
     var clientId =  firestor.collection('Appointments').doc().id;

    await firestor.collection('Appointments').doc(clientId).set(clientsModel.toJson(clientId)).then((value) => {
    })
        .catchError((onError) {
      print(onError);

      emit(AddAppointmentFailure());

     showToast(msg: onError.toString(), state: ToastedStates.WARNING);
    });
   showToast(msg: 'Appointment is added', state: ToastedStates.SUCCESS);

    emit(AddAppointmentSuccess());

  }



}