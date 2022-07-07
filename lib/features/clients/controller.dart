import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'clients_model.dart';
import 'states.dart';

import '../../core/dialoges/toast.dart';
class ClientCubit extends Cubit<ClientStates> {
  ClientCubit() : super(LoadingClient());

  static ClientCubit get(context) => BlocProvider.of(context);


  TextEditingController controllerName=TextEditingController();
  TextEditingController controllerPhone=TextEditingController();
  TextEditingController controllerSubType=TextEditingController();
  TextEditingController controllerStartDate=TextEditingController();
  TextEditingController controllerEndDate=TextEditingController();
  TextEditingController controllerGame=TextEditingController();
  TextEditingController controllerTime=TextEditingController();

  FirebaseFirestore firestor=FirebaseFirestore.instance;
  FirebaseAuth auth=FirebaseAuth.instance;


  addClient(ClientsModel clientsModel)async{
    emit(LoadingClient());
     var clientId =await  firestor.collection('clients').doc().id;

    await firestor.collection('clients').doc(clientId).set(clientsModel.toJson(clientId)).then((value) => {
    })
        .catchError((onError) {
      print(onError);

      emit(AddClientFailure());

     showToast(msg: onError.toString(), state: ToastedStates.WARNING);
    });
   showToast(msg: 'Client is added', state: ToastedStates.SUCCESS);

    emit(AddClientSuccess());

  }



}