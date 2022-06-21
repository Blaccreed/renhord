import 'package:flutter/material.dart';
import 'package:renhord/screens/Condition.dart';
import 'package:renhord/screens/Features.dart';
import 'package:renhord/screens/productType.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<Step> stepList() => [
      const Step(title: Text("Appareil"), content: productType()),

      const Step(title: Text("Caractéristiques"), content: Condition()),

      const Step(title: Text("État"), content: Condition())
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


