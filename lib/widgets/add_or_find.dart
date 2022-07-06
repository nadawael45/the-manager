import 'package:flutter/material.dart';
import '../core/app_images/app_images.dart';
import '../core/router/router.dart';
import '../features/home/units/grid_container.dart';
class AddOrFind extends StatelessWidget {
 final Widget? pageAdd;
  final Widget? pageFind;
  final String? addText;
  final String? findText;


  const AddOrFind({Key? key,required this.pageAdd,required this.pageFind,required this.addText,
    required this.findText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap:()=> MagicRouter.navigateTo(pageAdd!),
                  child: GridContainer(image: AppImages.add, text: addText!)),
              const SizedBox(height: 30,),
              InkWell(onTap:()=> MagicRouter.navigateTo(pageFind!),
                  child: GridContainer(image: AppImages.find, text: findText!)),

            ],
          ),
        );
  }
}
