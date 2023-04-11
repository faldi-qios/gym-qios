import 'package:flutter/material.dart';
import 'package:gym/screens/summary_select_membership_page/widgets/subscription_select.dart';
import 'package:gym/screens/summary_select_membership_page/widgets/summary_info.dart';

class SelectMembership extends StatelessWidget {
  const SelectMembership({super.key});

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
              const SizedBox(
                height: 30,
              ),

              //! The card for customer summary
              SummaryInfo(),

              const SizedBox(
                height: 50,
              ),

              SubscriptionSelect(),
            ],
          ),
        ),
      ),
    );
  }
}
