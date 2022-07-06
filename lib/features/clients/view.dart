import 'package:flutter/material.dart';
import 'package:newwapp/features/clients/units/page_add/view.dart';
import 'package:newwapp/features/clients/units/page_find/view.dart';

import '../../widgets/add_or_find.dart';


class ClientView extends StatelessWidget {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(
      child: AddOrFind(
        pageFind: AllClientsView(),
        pageAdd: AddClinetView(),
        addText: "اضف عميل",
        findText: 'رؤيه عميل حالي',

      ),
    )
      ,);
  }
}
