import 'package:flutter/material.dart';

import '../../../../widgets/custom_text_field.dart';
class FormSubList extends StatelessWidget {

   FormSubList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(title: 'اسم الاشتراك',),
            CustomTextField(title: 'سعر الاشتراك',),
            CustomTextField(title: 'عدد الحصص شهريا',),
            CustomTextField(title: 'عدد الشهور',),




          ],


    ));
  }
}
