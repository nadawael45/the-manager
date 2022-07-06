import 'package:flutter/material.dart';
import 'package:newwapp/features/sports/units/page_add/view.dart';
import 'package:newwapp/features/sports/units/page_find/view.dart';

import '../../widgets/add_or_find.dart';

class SportsView extends StatelessWidget {
  const SportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(body: Center(
      child: AddOrFind(
        pageFind: AllSportsView(),
        pageAdd: AddSportView(),
        findText: 'رؤيه الالعاب الحاليه',
        addText: "اضف لعبه",


      ),
    )
      ,);
  }
}
