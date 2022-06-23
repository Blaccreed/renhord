

import 'package:flutter/material.dart';

enum Etat { parfaitEtat, tresBonEtat, etatCorrect, casse }

class productCondition extends StatefulWidget {
  const productCondition({Key? key}) : super(key: key);

  @override
  State<productCondition> createState() => _productConditionState();
}

class _productConditionState extends State<productCondition> {
  Etat? _etatActuelle = Etat.tresBonEtat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Parfait Etat'),
          leading: Radio<Etat>(
            value: Etat.parfaitEtat,
            groupValue: _etatActuelle,
            onChanged: (Etat? value) {
              setState(() {
                _etatActuelle = value;
              });
            },
          ),
        ),

        ListTile(
          title: const Text('Très bon état'),
          leading: Radio<Etat>(
            value: Etat.tresBonEtat,
            groupValue: _etatActuelle,
            onChanged: (Etat? value) {
              setState(() {
                _etatActuelle = value;
              });
            },
          ),
        ),

        ListTile(
          title: const Text('État correct'),
          leading: Radio<Etat>(
            value: Etat.etatCorrect,
            groupValue: _etatActuelle,
            onChanged: (Etat? value) {
              setState(() {
                _etatActuelle = value;
              });
            },
          ),
        ),

        ListTile(
          title: const Text('Cassé'),
          leading: Radio<Etat>(
            value: Etat.casse,
            groupValue: _etatActuelle,
            onChanged: (Etat? value) {
              setState(() {
                _etatActuelle = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
