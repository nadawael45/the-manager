import 'package:flutter/material.dart';

import '../../../../widgets/custom_text_field.dart';
class FormSportList extends StatelessWidget {

   FormSportList({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(title: 'اسم اللعبه',),
            CustomTextField(title: 'صوره اللعبه',),





          ],


    ));
  }
}
