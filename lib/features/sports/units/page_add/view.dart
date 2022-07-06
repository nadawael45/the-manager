import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'form_list.dart';
class AddSportView extends StatelessWidget {
  const AddSportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormSportList()),
          CustomButton(function: (){}, text: 'اضف لعبه')
        ],
      ),
    ),);
  }
}
