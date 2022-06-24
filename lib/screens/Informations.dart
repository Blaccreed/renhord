



import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: const [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom',
            ),
          ),
          SizedBox(
            height: 15,
          ),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 15,
          ),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Téléphone',
            ),
          ),

          SizedBox(
            height: 15,
          ),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Message',
            ),
          )

        ],
      ),
    );
  }
}
