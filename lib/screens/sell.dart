
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         SizedBox(
           height: 150,
           width: 150,
           child: InkWell(
             onTap: (){},
             child: Image.asset('assets/notebook.jpg') ,
           ),
         ),

        SizedBox(
          height: 150,
          width: 150,
          child: InkWell(
            onTap: (){},
            child: Image.asset('assets/phone.jpg') ,
          ),
        ),

        SizedBox(
          height: 150,
          width: 150,
          child: InkWell(
            onTap: (){},
            child: Image.asset('assets/tablet.jpg') ,
          ),
        ),
      ],
    );
  }
}
