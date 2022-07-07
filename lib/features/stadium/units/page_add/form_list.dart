import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/stadium/st_controller.dart';
import 'package:newwapp/features/stadium/states.dart';

import '../../../../widgets/custom_text_field.dart';
class FormStadiumList extends StatelessWidget {

   FormStadiumList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return    BlocConsumer<StadiumCubit,StadiumStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=StadiumCubit.get(context);
        return Form(
          key: formKey,

            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextField(title: 'اسم الملعب',controller: cubit.controllerStadiumName,),
                CustomTextField(title: 'سعر حجز الملعب صباحا',controller: cubit.controllerStadiumPriceAm,),
                CustomTextField(title: 'عدد احجز الملعب مساء',controller: cubit.controllerStadiumPricePm,),
                CustomTextField(title: 'اسم صاحب الحجز',controller: cubit.controllerClientName,),




              ],


        ));
      }
    );
  }
}
