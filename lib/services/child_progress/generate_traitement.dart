import 'package:flutter/material.dart';

import '../../components/child_progress/traitement_component.dart';

List<Widget> getTraitements(int childId) {
  List<Map<String, Object>> traitements = [
    {'percentage': .9, 'name': 'Traitement'},
    {'percentage': .7, 'name': 'Traitement'},
    {'percentage': .9, 'name': 'Traitement'},
  ];

  return List.generate(
      traitements.length,
      (index) => TraitementComponent(
            percentage: traitements[index]['percentage'] as double,
            traitementName: traitements[index]['name'] as String,
          ));
}
