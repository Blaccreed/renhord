import 'package:flutter/material.dart';
import 'package:renhord/screens/sell.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
List<Step> stepList() => [
   const Step(content: Sell(), title: Text("Choisir votre type d'appareil")),
         Step(title: title, content: content)
]
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stepper(
        type: StepperType.horizontal,
        steps: [],
    );
  }
}
