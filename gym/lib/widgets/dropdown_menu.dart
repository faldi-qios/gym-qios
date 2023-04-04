import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);
  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownValue = 'Cabang Pondok Indah';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        // Step 2.
        DropdownButton<String>(
          // Step 3.
          value: dropdownValue,
          // Step 4.
          items: <String>[
            'Cabang Pondok Indah',
            'Cabang Menteng',
            'Cabang BSD',
            'Cabang Kelapa Gading'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 30),
              ),
            );
          }).toList(),
          // Step 5.
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        // Text(
        //   'Selected Value: $dropdownValue',
        //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        // )
      ],
    );
  }
}
