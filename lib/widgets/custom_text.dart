import 'package:flutter/material.dart';

import '../core/color_manager/color_manager.dart';

class CustomText extends StatelessWidget {
final  String? text;
final  Color? color;
  final double? fontSize;
  final FontWeight fontWeight;
  final TextAlign? align;
  final double? height;
  final TextDirection? textDirection;

const  CustomText(
      {Key? key,
        this.textDirection,
        this.height,
        this.align,
        required this.text,
        this.color = ColorManager.blackColor,
        this.fontSize,
        this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textDirection: textDirection?? TextDirection.rtl,
      style: TextStyle(
        height: height,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: 4,
      textAlign: align??TextAlign.center,
    );
  }
}