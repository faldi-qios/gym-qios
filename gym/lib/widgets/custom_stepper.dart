import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  final int currentStep;
  const CustomStepper({
    super.key,
    required this.currentStep,
  });

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  late int currentStep;

  List<String> steps = ["Checkout", "Payment Method", "Payment Process"];

  List<Step> loadStepItem(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    List<Step> result = [];
    for (var i = 0; i < steps.length; i++) {
      result.add(Step(
        isActive: currentStep >= i,
        state: currentStep > i ? StepState.complete : StepState.indexed,
        title: Text(
          steps[i],
          style: textTheme.titleMedium,
        ),
        content: const SizedBox.shrink(),
      ));
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    currentStep = widget.currentStep;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(primary: Theme.of(context).primaryColor),
      ),
      child: Stepper(
        elevation: 0,
        onStepTapped: null,
        type: StepperType.horizontal,
        currentStep: currentStep,
        steps: loadStepItem(context),
      ),
    );
  }
}
