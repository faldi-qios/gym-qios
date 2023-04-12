import 'package:flutter/material.dart';

class SummaryInfo extends StatelessWidget {
  const SummaryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 48, vertical: 31),
        // decoration: ,
        child: Row(
          children: [
            Wrap(
              // crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              spacing: 20,
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
                Text(
                  "Mobile Phone",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  "Tanggal Lahir",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  "Jenis Member",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  "Joined Date",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                )
              ],
            ),
            const SizedBox(width: 100),
            Wrap(
              direction: Axis.vertical,
              spacing: 20,
              children: [
                Text(
                  "Jane Doe",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "Perempuan",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "08782909976",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "23-03-1993",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "Gold",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "15-04-2022",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
