import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../appointment_model.dart';
import '../../../../widgets/custom_button.dart';
import '../../controller.dart';
import '../../states.dart';
class SubmitAppointmentBtn extends StatelessWidget {
  const SubmitAppointmentBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<AppointmentCubit,AppointmentStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=AppointmentCubit.get(context);

            if(state is AddAppointmentSuccess){
              cubit.controllerEndAppoint.text='';
             cubit.controllerNamesAppoint.text='';
             cubit.controllerNumbersAppoint.text='';
             cubit.controllerStartAppoint.text='';

            }
          return CustomButton(function: (){
            AppointmentCubit.get(context).addAppointment(AppointmentModel(
           startDate: cubit.controllerStartAppoint.text,
            daysNames:cubit.controllerNamesAppoint.text ,
            daysNumbers:cubit.controllerNumbersAppoint.text ,
            endDate: cubit.controllerEndAppoint.text,

          ));

          }, text: 'اضف موعد');
        }
      );
  }
}
