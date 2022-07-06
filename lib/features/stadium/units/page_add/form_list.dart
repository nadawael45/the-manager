import 'package:flutter/material.dart';

import '../../../../widgets/custom_text_field.dart';
class FormStadiumList extends StatelessWidget {

   FormStadiumList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(title: 'اسم الملعب',),
            CustomTextField(title: 'سعر حجز الملعب صباحا',),
            CustomTextField(title: 'عدد احجز الملعب مساء',),
            CustomTextField(title: 'اسم صاحب الحجز',),




          ],


    ));
  }
}
