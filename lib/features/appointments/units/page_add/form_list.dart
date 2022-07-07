import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/custom_text_field.dart';
import '../../controller.dart';
import '../../states.dart';
class FormAppointList extends StatelessWidget {

  FormAppointList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<AppointmentCubit,AppointmentStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=AppointmentCubit.get(context);
        return Form(
          key: formKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextField(title: 'عدد الايام',controller:cubit.controllerNumbersAppoint ,),
                CustomTextField(title: 'اسماء الايام',controller: cubit.controllerNamesAppoint,),
                CustomTextField(title: 'بدايه الموعد',controller: cubit.controllerStartAppoint,),
                CustomTextField(title: 'نهايه الموعد',controller: cubit.controllerEndAppoint,),






              ],


        ));
      }
    );
  }
}
