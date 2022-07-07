import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/stadium/states.dart';
import 'package:newwapp/features/subscription/states.dart';
import '../../controller.dart';
import '../../../../widgets/custom_button.dart';
import '../../subscription_model.dart';

class SubmitSubscriptionBtn extends StatelessWidget {
  const SubmitSubscriptionBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<SubscriptionCubit,SubscriptionStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=SubscriptionCubit.get(context);

            if(state is AddStadiumSuccess){
              cubit.controllerSessionNumber.text='';
             cubit.controllerSubscriptionName.text='';
             cubit.controllerSubscriptionPrice.text='';
             cubit.controllerMonthsNumbers.text='';

            }
          return CustomButton(function: (){
            SubscriptionCubit.get(context).addStadium(SubscriptionModel(
           monthsNumbers: cubit.controllerMonthsNumbers.text,
            priceSubscription:cubit.controllerSubscriptionPrice.text ,
            nameSubscription:cubit.controllerSubscriptionName.text ,
            sessionNumbers: cubit.controllerSessionNumber.text,

          ));

          }, text: 'اضف اشتراك');
        }
      );
  }
}
