import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // ignore: non_constant_identifier_names
  int current_step = 0;
  // ignore: non_constant_identifier_names
  List<Step> my_step = [
    const Step(
      title: Text(
        "Step 1",
      ),
      content: Text(
        "Hello",
      ),
      isActive: true,
      label: Text(
        "hello maheshwari",
      ),
    ),
    const Step(
      title: Text(
        "Step 2",
      ),
      content: Text(
        "World!",
      ),
      isActive: true,
    ),
    const Step(
      title: Text(
        "Step 3",
      ),
      content: Text(
        "Hello World!",
      ),
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "stepper application",
        ),
      ),
      body: Stepper(
        currentStep: current_step,
        steps: my_step,
        type: StepperType.horizontal,
        onStepTapped: (step) {
          setState(() {
            current_step = step;
          });
          ("onStepTapped : $step");
        },
        onStepCancel: () {
          setState(() {
            if (current_step > 0) {
              current_step = current_step - 1;
            } else {
              current_step = 0;
            }
          });
          ("onStepCancel : $current_step");
        },
        onStepContinue: () {
          setState(() {
            if (current_step < my_step.length - 1) {
              current_step = current_step + 1;
            } else {
              current_step = 0;
            }
          });
          ("onStepContinue : $current_step");
        },
      ),
    );
  }
}
