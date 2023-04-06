import 'package:flutter/material.dart';

class MemberSummaryScreen extends StatelessWidget {
  const MemberSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 48.0,
            right: 48.0,
            top: 30,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("Perpanjang membership",
                    style:
                        Theme.of(context).textTheme.displayLarge!.copyWith()),
              ),
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  // decoration: ,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full Name",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Gender",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text("Mobile Phone"),
                          Text("Tanggal Lahir"),
                          Text("Jenis Member"),
                          Text("Joined Date")
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Text("Jane Doe"),
                          Text("Perempuan"),
                          Text("08782909976"),
                          Text("23-03-1993"),
                          Text("Gold"),
                          Text("15-04-2022"),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
