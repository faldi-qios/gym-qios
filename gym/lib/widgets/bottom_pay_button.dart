import 'package:flutter/material.dart';

class BottomPayButton extends StatelessWidget {
  const BottomPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        // borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Rp. 200.000,000",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            // decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.white,
            //       width: 1,
            //     ),
            //     borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(10),
            child: Row(
              children: const [
                Text(
                  'Pay Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  size: 28,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
