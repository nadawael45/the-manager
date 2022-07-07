import 'package:flutter/material.dart';
import 'package:newwapp/features/stadium/units/page_add/form_list.dart';
import 'package:newwapp/features/stadium/units/page_add/submit_stadium_btn.dart';
import '../../widgets/add_or_find.dart';
part 'units/page_add/view.dart';
class StadiumView extends StatelessWidget {
  const StadiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: Center(
      child: AddOrFind(
        pageFind: null,
        pageAdd: _AddStadiumView(),
        findText: 'رؤيه الملاعب الحاليه',
        addText: "اضف ملعب",


      ),
    )
      ,);
  }
}
