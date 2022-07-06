import 'package:flutter/material.dart';

import '../../../../widgets/custom_text_field.dart';
class FormClientList extends StatelessWidget {

   FormClientList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(title: 'الاسم',),
            CustomTextField(title: 'رقم التليفون',),
            CustomTextField(title: 'نوع الاشتراك',),
            CustomTextField(title: 'تاريخ بدا الاشتراك',),
            CustomTextField(title: 'تاريخ انتهاء الاشتراك',),
            CustomTextField(title: 'المعاد',),
            CustomTextField(title: 'اللعبه المسجل بها',),
            CustomTextField(title: 'مسجل بالمدرسه ام لا',),



          ],


    ));
  }
}
