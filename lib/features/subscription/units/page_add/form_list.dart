import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/subscription/controller.dart';
import 'package:newwapp/features/subscription/states.dart';

import '../../../../widgets/custom_text_field.dart';
class FormSubList extends StatelessWidget {

   FormSubList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return   BlocConsumer<SubscriptionCubit,SubscriptionStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=SubscriptionCubit.get(context);
        return Form(
          key: formKey,

            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextField(title: 'اسم الاشتراك',controller: cubit.controllerSubscriptionName,),
                CustomTextField(title: 'سعر الاشتراك',controller: cubit.controllerSubscriptionPrice,),
                CustomTextField(title: 'عدد الحصص شهريا',controller: cubit.controllerSessionNumber,),
                CustomTextField(title: 'عدد الشهور',controller: cubit.controllerMonthsNumbers,),




              ],


        ));
      }
    );
  }
}
