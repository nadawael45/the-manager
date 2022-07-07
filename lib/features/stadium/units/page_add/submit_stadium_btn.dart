import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newwapp/features/stadium/states.dart';
import '../../../../widgets/custom_button.dart';
import '../../st_controller.dart';
import '../../stadium_model.dart';
class SubmitStadiumBtn extends StatelessWidget {
  const SubmitStadiumBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<StadiumCubit,StadiumStates>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=StadiumCubit.get(context);

            if(state is AddStadiumSuccess){
              cubit.controllerClientName.text='';
             cubit.controllerStadiumPricePm.text='';
             cubit.controllerStadiumPriceAm.text='';
             cubit.controllerStadiumName.text='';

            }
          return CustomButton(function: (){
            StadiumCubit.get(context).addStadium(StadiumModel(
           pricePm: cubit.controllerStadiumPricePm.text,
            priceAm:cubit.controllerStadiumPriceAm.text ,
            stadiumName:cubit.controllerStadiumName.text ,
            clientName: cubit.controllerClientName.text,

          ));

          }, text: 'اضف ملعب');
        }
      );
  }
}
