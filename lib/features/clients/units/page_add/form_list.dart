import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../states.dart';

import '../../../../widgets/custom_text_field.dart';
import '../../controller.dart';
class FormClientList extends StatelessWidget {

   FormClientList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    return
      BlocConsumer<ClientCubit,ClientStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit= ClientCubit.get(context);

            return Form(
          key: formKey,

            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextField(title: 'الاسم',controller:cubit.controllerName,),
                CustomTextField(title: 'رقم التليفون',controller: cubit.controllerPhone,),
                CustomTextField(title: 'نوع الاشتراك',controller: cubit.controllerSubType,),
                CustomTextField(title: 'تاريخ بدا الاشتراك',controller: cubit.controllerStartDate,),
                CustomTextField(title: 'تاريخ انتهاء الاشتراك',controller: cubit.controllerEndDate,),
                CustomTextField(title: 'المعاد',controller: cubit.controllerTime,),
                CustomTextField(title: 'اللعبه المسجل بها',controller:cubit.controllerGame,),
                CustomTextField(title: 'مسجل بالمدرسه ام لا',),



              ],


        ));
      }
    );
  }
}
