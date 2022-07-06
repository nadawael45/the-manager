import 'package:flutter/material.dart';
import '../core/color_manager/color_manager.dart';


class CustomTextField extends StatelessWidget {
  String? title;
  var onSaved;
  var validate;
  var prefixIcon;
  bool obscure;

  CustomTextField(
      {this.title,
      this.onSaved,
      this.validate,
      this.obscure = false,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 30,),
        Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7)),
          child: TextFormField(
            obscureText: obscure,
            onSaved: onSaved,
            validator: validate,
            autofocus: false,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            decoration: InputDecoration(

              hintText: title,
                labelStyle:const TextStyle(),
                prefixIcon: prefixIcon,
                contentPadding:
                const  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                //focusedBorder: InputBorder.none,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: ColorManager.primaryColor,width: 10),

                )),
          ),
        )
      ],
    );
  }
}
