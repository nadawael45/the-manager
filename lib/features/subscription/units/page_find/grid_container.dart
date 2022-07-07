import 'package:flutter/material.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';


class SubscriptionContainer extends StatelessWidget {
  String? name;
   SubscriptionContainer({Key? key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 11,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(width: 1, color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomText(text: 'اشتراك السله'),
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: 'اجمالي المشتركين'),
              CustomButton(function: (){}, text: '41',height: 30,)
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: 'اجمالي الايرادات'),
              CustomButton(function: (){}, text: '41',height: 30,)

            ],
          ),
          Row(children: [
            Expanded(child: CustomButton(text: 'حذف', function: () {  },height: 45,)),
            const SizedBox(width: 20,),
            Expanded(child: CustomButton(text: 'المشتركين', function: () {  },height: 45,))

          ],)



        ],),
      ),
    );
  }
}
