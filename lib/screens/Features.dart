import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  List<DropdownMenuItem<String>> dropdownItems = [];
  List<String> brands = [];

  var seen = <String>{};

  @override
  Widget build(BuildContext context) {
    List<String> uniquelist = brands.where((brand) => seen.add(brand)).toList();


    return Container(
      child: Center(
          child: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/phone-model.json'),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            var jsonData = json.decode(snapshot.data.toString()) as Map;

            for (String k in jsonData.keys) {
              brands.add(k);
            }
            String defaultValue = uniquelist.first;
            return DropdownButton<String>(
              value: defaultValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              items: uniquelist.map((brand) {
                return DropdownMenuItem(
                  child: Text(brand),
                  value: brand,
                );
              }).toList(),
              onChanged: (brand) {
                setState(() {
                  print("You selected: $brand");
                  print(uniquelist[0]);

                  defaultValue = brand!;
                  print(defaultValue);
                });
              },
            );
          }
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
