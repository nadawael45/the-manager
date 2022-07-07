import 'package:flutter/material.dart';
import 'package:newwapp/features/subscription/units/page_add/form_list.dart';
import 'package:newwapp/features/subscription/units/page_add/submit_subscription_btn.dart';
import 'package:newwapp/features/subscription/units/page_find/grid_list.dart';
import '../../widgets/add_or_find.dart';
part 'units/page_add/view.dart';
part 'units/page_find/view.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(body: Center(
      child: AddOrFind(
        pageFind: _AllSubscriptionView(),
        pageAdd: _AddSubscriptionView(),
        findText: 'رؤيه اشتراك حالي',
        addText: "اضف اشتراك",


      ),
    )
      ,);
  }
}
