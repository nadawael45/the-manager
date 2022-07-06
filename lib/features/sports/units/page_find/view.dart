import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'grid_list.dart';
class AllSportsView extends StatelessWidget {
  const AllSportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Expanded(child: const SportsGridView()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: CustomButton(function: (){}, text: 'عدد الالعاب 5'),
        )
      ],
    ),);
  }
}
