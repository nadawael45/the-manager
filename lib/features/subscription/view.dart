import 'package:flutter/material.dart';
import 'package:newwapp/features/subscription/units/page_add/view.dart';
import 'package:newwapp/features/subscription/units/page_find/view.dart';

import '../../widgets/add_or_find.dart';

class SubscriptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(body: Center(
      child: AddOrFind(
        pageFind: AllSubscriptionView(),
        pageAdd: AddSubscriptionView(),
        findText: 'رؤيه اشتراك حالي',
        addText: "اضف اشتراك",


      ),
    )
      ,);
  }
}
