import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {


  List<String> dataKeys = [];
  List<String> dataValue = [];
  List<DropdownMenuItem<String>> dropdownItems = [];
  @override
  Widget build(BuildContext context) {

  String dropdownValue = 'one';

    return Container(
      child: Center(
          child: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/phone-model.json'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          var new_data = json.decode(snapshot.data.toString()) as Map;
          for (String key in new_data.keys) {
            dataKeys.add(key);
            var newDropdown = DropdownMenuItem(child: Text(key),
            value: key,);
            dropdownItems.add(newDropdown);
          }
          for (String value in new_data.values) {
            dataValue.add(value);

          }

          return DropdownButton<String>(
            value: dataKeys[0],
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: dropdownItems
          );
          //data.map((e) => null)
        },
      )),
    );
  }
}
