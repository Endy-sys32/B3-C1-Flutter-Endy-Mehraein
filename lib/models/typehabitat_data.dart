import 'package:location/models/type_habitat.dart';

class TypehabitatData {
  static final data = [
    {"id": 1, "libelle": "Maison"},
    {"id": 2, "libelle": "Appartement"}
  ];

  static List<TypeHabitat> buildList() {
    return data.map((item) => TypeHabitat.fromJson(item)).toList();

    // List<TypeHabitat> _list = [];
    // _list.add(TypeHabitat(1, "Maison"));
    // _list.add(TypeHabitat(2, "Appartement"));
    // return _list;
  }
}
