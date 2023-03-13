import 'package:location/models/habitation.dart';
import 'package:location/models/habitation_data.dart';
import 'package:location/models/type_habitat.dart';
import 'package:location/models/typehabitat_data.dart';

class HabitationService {

  // var _typehabitats = [TypeHabitat(1, "Maison"),TypeHabitat(2, "Appartement")];
  //
  // var _habitations = List.generate(300, (index) {
  //   bool maison = index%3==0;
  //   return Habitation(
  //     index,
  //     maison ? TypeHabitat(1, "Maison") : TypeHabitat(2, "Appartement"),
  //     maison ? "maison.jpg" : "appartement.jpg" ,
  //     "${maison ? 'Maison' : 'Appartement'} ${index}",
  //     "${index} Rue de la paix",
  //     2 + index%10,
  //     2 +index%5,
  //     2 +index%5,
  //     2 +index%5,
  //     (maison ? 150 : 40) + index,
  //     ((maison ? 800 : 400) + index).toDouble());
  // });

  var _typehabitats;
  var _habitations;

  HabitationService() {
    _typehabitats = TypehabitatData.buildList();
    _habitations = HabitationsData.buildList();
  }

List<TypeHabitat> getTypeHabitats() {
  return _typehabitats;
}

List<Habitation> getHabitationTop10() {
  return _habitations
    .where((element) => element.id%2 == 1)
  .take(10)
  .toList();
}

List<Habitation> getMaison() {
  return _getHabitations(isHouse: true);
}

List<Habitation> getAppartements() {
  return _getHabitations(isHouse: false);
}

List<Habitation> _getHabitations({bool isHouse = true}) {
  return _habitations
      .where((element) => element.typeHabitat.id == (isHouse ? 1 : 2))
      .toList();
}
}