import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'form_list.dart';
class AddAppointView extends StatelessWidget {
  const AddAppointView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormAppointList()),
          CustomButton(function: (){}, text: 'اضف معاد')
        ],
      ),
    ),);
  }
}
