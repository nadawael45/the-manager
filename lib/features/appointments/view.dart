import 'package:flutter/material.dart';
import 'package:newwapp/features/appointments/units/page_add/view.dart';

import '../../widgets/add_or_find.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: Center(
      child: AddOrFind(
        pageFind: null,
        pageAdd: AddAppointView(),
        findText: 'رؤيه المواعيد الحاليه',
        addText: "اضف معاد",


      ),
    )
      ,);
  }
}
