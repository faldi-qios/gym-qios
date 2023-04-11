import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BranchSelect extends StatefulWidget {
  const BranchSelect({Key? key}) : super(key: key);
  @override
  State<BranchSelect> createState() => _BranchSelectState();
}

class _BranchSelectState extends State<BranchSelect> {
  String dropdownValue = 'Cabang Pondok Indah';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
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
                    // style: TextStyle(fontSize: 30),
                    style: const TextStyle(
                      fontFamily: 'Gordita',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      letterSpacing: 0.39,
                      color: Color(0XFF221F20),
                    ),
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
          ),
        ),
      ],
    );
  }
}
