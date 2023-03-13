import 'dart:ffi';

import 'package:location/models/type_habitat.dart';


class Habitation {
  int id;
  TypeHabitat typeHabitat;
  String image;
  String libelle;
  String adresse;
  int nbpersonne;
  int chambres;
  int lits;
  int salledebains;
  int superficie;
  double prixmois;
  List<Option> option;
  List<OptionPayante> optionpayantes;

  Habitation(
      this.id,
      this.typeHabitat,
      this.image,
      this.libelle,
      this.adresse,
      this.nbpersonne,
      this.chambres,
      this.lits,
      this.salledebains,
      this.superficie,
      this.prixmois,
      {
      this.option = const [],
      this.optionpayantes = const [],
      });

  Habitation.fromJson(Map<String, dynamic> json)
  : id = json['id'],
    typeHabitat = TypeHabitat.fromJson(json['typehabitat']),
    image = json['image'],
    libelle = json['libelle'],
    adresse = json['adresse'],
    nbpersonne = json['habitantsmax'],
    chambres = json['chambres'],
    lits = json['lits'],
    salledebains = json['sdb'],
    superficie = json['superficie'],
    prixmois = json['prixmois'],
    option = (json['items'] as List).map((item) => Option
        .fromJson(item))
        .toList(),
    optionpayantes = (json['optionpayantes'] as List).map((item) => OptionPayante
        .fromJson(item))
        .toList();
}

class Option {

  int id;
  String libelle;
  String description;

  Option(this.id, this.libelle, {this.description = ""});

  Option.fromJson(Map<String, dynamic> json)
  : id = json['id'],
    libelle = json['libelle'],
    description = json['description'];
}

class OptionPayante extends Option {
  double prix;

  OptionPayante(int id, String libelle, {String description='', this.prix=0}) : super (id, libelle, description: description);

  OptionPayante.fromJson(Map<String, dynamic> json)
  : prix = json['prix'],
    super.fromJson(json['optionpayante']);

}

class OptionPayanteCheck extends OptionPayante{
  bool checked;

  OptionPayanteCheck(int id, String libelle, this.checked, {String description = "", double prix = 0}) : super(id, libelle, description: description);
}



