import 'package:flutter/material.dart';
import 'package:renhord/screens/productBrand.dart';
import 'package:renhord/screens/Informations.dart';
import 'package:renhord/screens/productBrand2.dart';
import 'package:renhord/screens/productType.dart';
import 'package:renhord/screens/productCondition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<Step> stepList() => [
      const Step(title: Text(""), content: productType()),

      const Step(title: Text(""), content: test()),

      const Step(title: Text(""), content: productCondition()),

      const Step(title: Text(""), content: Information()),


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


