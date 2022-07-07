import 'package:flutter/material.dart';
import 'package:newwapp/features/appointments/units/page_add/form_list.dart';
import 'package:newwapp/features/appointments/units/page_add/submit_appointment_btn.dart';
import '../../widgets/add_or_find.dart';
import '../../widgets/custom_button.dart';
part 'units/page_add/view.dart';


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
