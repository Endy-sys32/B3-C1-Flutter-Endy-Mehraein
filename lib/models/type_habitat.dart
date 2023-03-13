import 'package:flutter/cupertino.dart';
import 'package:location/models/habitation.dart';

class TypeHabitat {
  int id;
  String libelle;

  TypeHabitat(this.id, this.libelle);

  TypeHabitat.fromJson(Map<String, dynamic> json)
  : id = json['id'],
    libelle = json['libelle'];
}