import 'package:flutter/material.dart';
import '../../../widgets/custom_text.dart';

class GridContainer extends StatelessWidget {
   GridContainer({
    Key? key,
    required final this.image,
    required final this.text,

  }) : super(key: key);

  String text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Image.asset(image,height: 90,width: 75,),
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: text,
          align: TextAlign.center,
          fontWeight: FontWeight.bold,)
      ],
    );
  }
}