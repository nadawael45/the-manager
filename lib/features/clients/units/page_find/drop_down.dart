import 'package:flutter/material.dart';
class SortBy extends StatefulWidget {

  @override
  State<SortBy> createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  String dropdownvalue = 'الجميع';

  // List of items in our dropdown menu
  var items = [
    'الجميع',
    'كره السله',
    'كره اليد',
    'الاشتراك الملغي',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: DropdownButton(

        // Initial Value
        value: dropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );

  }
}
