import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/subscription/subscription_model.dart';
import 'states.dart';

import '../../core/dialoges/toast.dart';
class SubscriptionCubit extends Cubit<SubscriptionStates> {
  SubscriptionCubit() : super(LoadingSubscription());

  static SubscriptionCubit get(context) => BlocProvider.of(context);


  TextEditingController controllerSubscriptionPrice=TextEditingController();
  TextEditingController controllerSubscriptionName=TextEditingController();
  TextEditingController controllerMonthsNumbers=TextEditingController();
  TextEditingController controllerSessionNumber=TextEditingController();


  FirebaseFirestore firestor=FirebaseFirestore.instance;
  FirebaseAuth auth=FirebaseAuth.instance;


  addStadium(SubscriptionModel subscriptionModel)async{
    emit(LoadingSubscription());
     var clientId =  firestor.collection('Subscription').doc().id;

    await firestor.collection('Subscription').doc(clientId).set(subscriptionModel.toJson(clientId)).then((value) => {
    })
        .catchError((onError) {
      print(onError);

      emit(AddSubscriptionFailure());

     showToast(msg: onError.toString(), state: ToastedStates.WARNING);
    });
   showToast(msg: 'Subscription is added', state: ToastedStates.SUCCESS);

    emit(AddSubscriptionSuccess());

  }



}