import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'form_list.dart';
class AddStadiumView extends StatelessWidget {
  const AddStadiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormStadiumList()),
          CustomButton(function: (){}, text: 'اضف ملعب')
        ],
      ),
    ),);
  }
}
