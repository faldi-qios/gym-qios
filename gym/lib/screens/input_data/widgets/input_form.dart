import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _formKey = GlobalKey<FormState>();

class ExtendForm extends StatelessWidget {
  // final controller;
  // final String hintText;
  // final bool obscureText;

  const ExtendForm({
    super.key,
    // required this.controller,
    // required this.hintText,
    // required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //?for fullname ----------------------------------------------
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Full Name",
              style: TextStyle(
                fontFamily: "Gordita",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF221F20),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            // margin: const EdgeInsets.all(8),
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.black45)),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please complete the form";
                }

                return null;
              },
              style: const TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.29),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
              ),
            ),
          ),

          //? FOR MOBILE PHONE-------------------------------------------------------
          const SizedBox(
            height: 40,
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Mobile Phone",
              style: TextStyle(
                fontFamily: "Gordita",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF221F20),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            // margin: const EdgeInsets.all(8),
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.black45)),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please complete the form";
                }

                return null;
              },
              style: const TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.29),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
              ),
            ),
          ),

          //? FOR ID NUMBER-----------------------------------------------------------------
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "ID Number",
              style: TextStyle(
                fontFamily: "Gordita",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF221F20),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            // margin: const EdgeInsets.all(8),
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.black45)),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please complete the form";
                }

                return null;
              },
              style: const TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.29),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
              ),
            ),
          ),

          //? FOR BIRTH DATE--------------------------------------------------------------
          //day -  month - year
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Tanggal Lahir",
              style: TextStyle(
                fontFamily: "Gordita",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF221F20),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            // margin: const EdgeInsets.all(8),
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.black45)),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please complete the form";
                }

                return null;
              },
              style: const TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.29),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
              ),
            ),
          ),

          // SizedBox(
          //   height: 200,
          // ),

          //? BUTTON LOCATION
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
                      context.go("/extend-membership/select");
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
    );
  }
}
