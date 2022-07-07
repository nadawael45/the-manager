import 'package:flutter/material.dart';
import 'package:newwapp/features/clients/units/page_add/form_list.dart';
import 'package:newwapp/features/clients/units/page_add/submit_btn.dart';
import 'package:newwapp/features/clients/units/page_find/drop_down.dart';
import 'package:newwapp/features/clients/units/page_find/grid_list.dart';
import '../../widgets/add_or_find.dart';
import '../../widgets/custom_button.dart';
part 'units/page_add/view.dart';
part 'units/page_find/view.dart';

class ClientView extends StatelessWidget {
   const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: Center(
      child: AddOrFind(
        pageFind: _AllClientsView(),
        pageAdd: _AddClientView(),
        addText: "اضف عميل",
        findText: 'رؤيه عميل حالي',

      ),
    )
      ,);
  }
}
