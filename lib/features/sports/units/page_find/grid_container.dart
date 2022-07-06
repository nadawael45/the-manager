import 'package:flutter/material.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';


class SportsContainer extends StatelessWidget {
  String? name;
  SportsContainer({Key? key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(

        elevation:5,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(color: ColorManager.primaryColor,width: 120,height:200,),
              SizedBox(width: 20,),
              Expanded(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CustomText(text: 'لعبه السباحه'),
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'اجمالي المشتركين'),
                      CustomButton(function: (){}, text: '41',height: 30,)
                    ],
                  ),
                  Row(children: [
                    Expanded(child: CustomButton(text: 'حذف', function: () {  },height: 40,)),
                    SizedBox(width: 20,),
                    Expanded(child: CustomButton(text: 'الاشتراكات', function: () {  },height: 40,))

                  ],)



                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
