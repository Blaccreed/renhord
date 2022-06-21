import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  const Condition({Key? key}) : super(key: key);

  @override
  State<Condition> createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  List<String> _states = [
    "Parfait état",
    "Très bon état",
    "État correct",
    "Cassé"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: _states.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 30,
              width: 10,
              color: Colors.white,
              child: ListTile(
                  title: Text(_states[index]),
                  leading: Radio<String>(
                    value: _states[index],
                    groupValue: _states[index],
                    onChanged: (String? value) {
                      setState(() {

                      });
                    },

                  ),
              ),
            );
          }),
    );
  }
}
