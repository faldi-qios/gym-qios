import 'package:flutter/material.dart';

class SubscriptionSelect extends StatefulWidget {
  const SubscriptionSelect({super.key});

  @override
  State<SubscriptionSelect> createState() => _SubscriptionSelectState();
}

class _SubscriptionSelectState extends State<SubscriptionSelect> {
  int price = 2540000;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
          child: RadioListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Membership 1 tahun :"),
                Text("Rp.2.540.000,00"),
              ],
            ),
            value: 2540000,
            groupValue: price,
            onChanged: (value) {
              setState(() {
                price = value!;
              });
            },
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(
                  color: Colors.black45,
                ),
                right: BorderSide(
                  color: Colors.black45,
                ),
                bottom: BorderSide(color: Colors.black45)),
          ),
          child: RadioListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Membership 1 bulan :"),
                Text("Rp.220.000,00"),
              ],
            ),
            value: 220000,
            groupValue: price,
            onChanged: (value) {
              setState(() {
                price = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
