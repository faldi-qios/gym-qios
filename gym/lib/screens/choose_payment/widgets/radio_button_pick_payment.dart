import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Payment {
  qris,
  cc,
  emoney,
  cash,
}

class PickPaymentMenthod extends StatefulWidget {
  const PickPaymentMenthod({super.key});

  @override
  State<PickPaymentMenthod> createState() => _PickPaymentMenthodState();
}

class _PickPaymentMenthodState extends State<PickPaymentMenthod> {
  Payment? _payment = Payment.qris;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ListTile(
            title: const Text('QRIS'),
            leading: Radio<Payment>(
              value: Payment.qris,
              groupValue: _payment,
              onChanged: (Payment? value) {
                setState(() {
                  _payment = value;
                });
              },
            ),
            shape: Border(
              top: BorderSide(),
              bottom: BorderSide(),
              left: BorderSide(),
              right: BorderSide(),
            ),
          ),
          ListTile(
            title: const Text('Credit Card'),
            leading: Radio<Payment>(
              value: Payment.cc,
              groupValue: _payment,
              onChanged: (Payment? value) {
                setState(() {
                  _payment = value;
                });
              },
            ),
            shape: Border(
              bottom: BorderSide(),
              left: BorderSide(),
              right: BorderSide(),
            ),
          ),
          ListTile(
            title: const Text('E-Money'),
            leading: Radio<Payment>(
              value: Payment.emoney,
              groupValue: _payment,
              onChanged: (Payment? value) {
                setState(() {
                  _payment = value;
                });
              },
            ),
            shape: Border(
              bottom: BorderSide(),
              left: BorderSide(),
              right: BorderSide(),
            ),
          ),
          ListTile(
            title: const Text('Cash'),
            leading: Radio<Payment>(
              value: Payment.cash,
              groupValue: _payment,
              onChanged: (Payment? value) {
                setState(() {
                  _payment = value;
                });
              },
            ),
            shape: Border(
              bottom: BorderSide(),
              left: BorderSide(),
              right: BorderSide(),
            ),
          ),
        ],
      ),
    );
  }
}
