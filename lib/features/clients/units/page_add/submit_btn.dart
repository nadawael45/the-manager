import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../clients_model.dart';

import '../../../../widgets/custom_button.dart';
import '../../controller.dart';
import '../../states.dart';
class SubmitBtn extends StatelessWidget {
  const SubmitBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<ClientCubit,ClientStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=ClientCubit.get(context);

            if(state is AddClientSuccess){
              cubit.controllerName.text='';
             cubit.controllerPhone.text='';
             cubit.controllerStartDate.text='';
             cubit.controllerGame.text='';
             cubit.controllerTime.text='';
             cubit.controllerSubType.text='';
             cubit.controllerEndDate.text='';
            }
          return CustomButton(function: (){
          ClientCubit.get(context).addClient(ClientsModel(
            name: cubit.controllerName.text,
            phone: cubit.controllerPhone.text,
            startDate: cubit.controllerStartDate.text,
            game: cubit.controllerGame.text,
            time: cubit.controllerTime.text,
            subscriptionType: cubit.controllerSubType.text,
            endDate: cubit.controllerEndDate.text,

          ));

          }, text: 'اضف المستخدم');
        }
      );
  }
}
