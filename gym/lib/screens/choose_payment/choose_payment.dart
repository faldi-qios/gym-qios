import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym/screens/choose_payment/widgets/radio_button_pick_payment.dart';

import '../../widgets/custom_back_from_payment.dart';
import '../../widgets/custom_stepper.dart';

class ChoosePayment extends StatelessWidget {
  const ChoosePayment({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 75,
                child: CustomStepper(
                  currentStep: 1,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TitleWithBackButton(title: "Choose Payment Method"),
              PickPaymentMenthod(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Ringkasan Pesanan",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text("Order ID #234338",
                    style:
                        Theme.of(context).textTheme.displaySmall!.copyWith()),
              ),
              Row(
                children: List.generate(
                    1000 ~/ 10,
                    (index) => Expanded(
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.grey,
                            height: 2,
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! This should be dynamic
                  // RichText(
                  //   maxLines: 2,
                  //   overflow: TextOverflow.ellipsis,
                  //   strutStyle: StrutStyle(fontSize: 12.0),
                  //   text: TextSpan(
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .displaySmall!
                  //           .copyWith(),
                  //       text: "Perpanjang membership gold 1 tahun"),
                  // ),

                  Expanded(
                      child: Text(
                    "Perpanjang Membership Gold 1 Tahun",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                  )),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "Rp. 2.450.000",
                    style:
                        Theme.of(context).textTheme.headlineMedium!.copyWith(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Jane Doe",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w300),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 70),
                child: Row(
                  children: List.generate(
                      1000 ~/ 10,
                      (index) => Expanded(
                            child: Container(
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : Colors.grey,
                              height: 2,
                            ),
                          )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! This should be dynamic
                  Expanded(
                      child: Text(
                    "Total",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                  )),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "Rp. 2.450.000",
                    style:
                        Theme.of(context).textTheme.headlineMedium!.copyWith(),
                  ),
                ],
              ),
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
                          context.go("/payment"); //? Go To payment
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
                            'Lanjut',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ),
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
