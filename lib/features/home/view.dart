
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newwapp/features/home/units/grid_container.dart';

import '../../core/app_images/app_images.dart';
import '../../core/router/router.dart';
import '../appointments/view.dart';
import 'home_model.dart';

part 'units/grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 0.5.sh,
                child: const HomeGridView()
            ),
          Center(child: InkWell(onTap: ()=>MagicRouter.navigateTo(const AppointmentView())
              ,child: GridContainer(image: AppImages.deadline, text: 'المواعيد')))
          ],
        ),
      ),
    );
  }
}
