import 'package:flutter/material.dart';


import '../../../../widgets/custom_button.dart';
import 'drop_down.dart';
import 'grid_list.dart';
class AllClientsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        SortBy(),
        Expanded(child: ClientsGridView()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: CustomButton(function: (){}, text: 'اجمالي ايرادات اليوم 5\nاجمالي ايرادات الشهر 100'),
        )
      ],
    ),);
  }
}
