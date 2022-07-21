import 'dart:convert';

import 'package:flutter/material.dart';

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

//EnhancedDropDown.withData(dropdownLabelTitle: "Marque du téléphone", dataSource: _getBrands(), defaultOptionText: defaultOptionText, valueReturned: valueReturned);

class _FeaturesState extends State<Features> {
  String defaultValue = "Apple";
  List<String> models = [];
  List<String> brands = [];


  Future<String> getBrands() async {
    final response = await DefaultAssetBundle.of(context)
        .loadString('assets/phone-model.json');
    var data = json.decode(response.toString()) as Map;

    for (String brand in data.keys) {

      brands.add(brand);

    }



    print(brands);
   print(models);
    return "Success";
  }

  @override
  void initState() {
    super.initState();

    getBrands();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: defaultValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (brand) {
            setState(() {
              defaultValue = brand.toString();
              print(defaultValue);
            });
          },
          items: brands.map((brand) {
            return DropdownMenuItem(
              value: brand,
              child: Text(brand),
            );
          }).toList(),
        ),


      ],
    );
  }
}
