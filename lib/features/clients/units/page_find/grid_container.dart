import 'package:flutter/material.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';


class ClientsContainer extends StatelessWidget {
  String? name;
  ClientsContainer({Key? key,this.name}) : super(key: key);

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
          padding: const EdgeInsets.all( 20),
          child: Column(children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                CustomText(text: 'الاسم'),
                SizedBox(width: 10,),
                CustomText(text: 'محمد'),
              ],
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                CustomText(text: 'رقم الهاتف'),
                SizedBox(width: 10,),
                CustomText(text: '010809864436'),
              ],
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                CustomText(text: 'اسم اللعبه'),
                SizedBox(width: 10,),
                CustomText(text: 'السله'),
              ],
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                CustomText(text: 'الاشتراك'),
                SizedBox(width: 10,),
                CustomText(text: '200'),
              ],
            ),
            CustomButton(function: (){}, text: 'حذف المشترك',height: 45,)





          ],),
        ),
      ),
    );
  }
}
