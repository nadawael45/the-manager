import 'package:flutter/material.dart';

import '../../../../widgets/custom_text_field.dart';
class FormAppointList extends StatelessWidget {

  FormAppointList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(title: 'عدد الايام',),
            CustomTextField(title: 'اسماء الايام',),
            CustomTextField(title: 'نهايه الموعد',),






          ],


    ));
  }
}
