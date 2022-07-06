import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'form_list.dart';
class AddClinetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormClientList()),
          CustomButton(function: (){}, text: 'اضف المستخدم')
        ],
      ),
    ),);
  }
}
