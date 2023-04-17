import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym/screens/extend_membership/widgets/subscription_select.dart';
import 'package:gym/screens/extend_membership/widgets/summary_info.dart';

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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text(
                          //           "This should replaced by route to the payment/confirmation page"),
                          //     ),
                          //   );
                          // }
                          context.go("/order-summary");
                        }, //This go to membership payment
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 30),
                          child: Text(
                            'Enter',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black87,
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                      onPressed: () => context.go("/"),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
