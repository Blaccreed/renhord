





import 'dart:convert';
import 'dart:html';

import 'package:enhanced_drop_down/enhanced_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

Future<List<String>> getBrands() async {
  List<String> brands = [];
  final response = await Uri.https("run.mocky.io", "/v3/a79a447c-cca4-426a-9b85-d0a99f26096c");
  Map<String, dynamic> json = jsonDecode(response.toString());

  for(String s in json.keys){
    brands.add(s);
  }
  return brands;
}



class _testState extends State<test> {
  String  _selected = "";

  @override
  void initState() {
    super.initState();
    this
  }

  @override
  Widget build(BuildContext context) {

    return //EnhancedDropDown.withEndpoint(dropdownLabelTitle: "Label", defaultOptionText: "Apple", urlToFetchData: Uri.https("run.mocky.io", "/v3/a79a447c-cca4-426a-9b85-d0a99f26096c"), valueReturned:(chosen) {
    //  print(chosen);
   //  });
    EnhancedDropDown.withData(dropdownLabelTitle: dropdownLabelTitle, dataSource: _getBrands()., defaultOptionText: defaultOptionText, valueReturned: valueReturned)
  }
}
