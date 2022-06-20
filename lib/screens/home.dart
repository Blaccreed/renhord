import 'package:flutter/material.dart';
import 'package:renhord/screens/sell.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<Step> stepList() => [
      const Step(content: Sell(), title: Text("")),

      Step(title: Text("Marque"), content: Brand()),

      Step(title: Text("Next"), content: Test())
    ];

int current = stepList().indexOf(stepList().first);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: current,
      type: StepperType.horizontal,
      steps: stepList(),
      onStepContinue: () {
        if (current <= 0) {
          setState(() {
            current += 1;
          });
        }
      },
      onStepCancel: () {
        if (current > 0) {
          setState(() {
            current -= 1;
          });
        }
      },
    );
  }
}


