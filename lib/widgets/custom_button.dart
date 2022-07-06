import 'package:flutter/material.dart';
import '../core/color_manager/color_manager.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
 final void Function()? function;
 final String? text;
  final double? width;
 final double? height;

 final Color colorBtn;

 const CustomButton({Key? key,required this.function,required this.text,this.width,this.colorBtn=ColorManager.primaryColor,this.height=60}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 30),
      child: InkWell(
        onTap: function,
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: colorBtn,
                borderRadius: BorderRadius.circular(7),

            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomText(text: text,color:  Colors.white,fontSize: 15,),
            ))),
      ),
    );
  }

}
