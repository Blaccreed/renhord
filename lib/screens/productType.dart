import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'productBrand.dart';

class productType extends StatefulWidget {
  const productType({Key? key}) : super(key: key);

  @override
  State<productType> createState() => _productTypeState();
}

class _productTypeState extends State<productType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.white,
          height: 125,
          width: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Features()),
                  );
                },
                child: Image.asset('assets/phone.jpg'),
              ),
              const SizedBox(height: 5,),
              const Text("téléphone"),
            ],

          ),
        ),

        const SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.white,
          height: 125,
          width: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset('assets/tablet.jpg'),
              ),
              SizedBox(height: 5,),
              Text("tablette")
            ],
          ),
        ),
      ],
    );
  }
}
