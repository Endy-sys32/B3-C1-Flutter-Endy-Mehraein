import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/view/habitation_details.dart';
import 'package:location/view/share/habitation_features_widget.dart';

import '../models/habitation.dart';
import '../services/habitation_service.dart';
import 'share/habitation_option.dart';

class HabitationList extends StatelessWidget {
  final bool isHouseList;
  final HabitationService service = HabitationService();
  late List<Habitation> _habitation;
  HabitationList(this.isHouseList, {Key? key}) : super(key: key) {_habitation = isHouseList ? service.getMaison() : service.getAppartements();}

  // var _habitation = [
  //   Habitation(1, "maison.jpg", "Maison méditérranéenne", "3 rue distillerie", 5, 400, 700),
  //   Habitation(2, "maison.jpg", "Maison méditérranéenne", "3 rue distillerie", 5, 400, 700),
  //   Habitation(3, "maison.jpg", "Maison méditérranéenne", "3 rue distillerie", 5, 400, 700),
  //   Habitation(4, "maison.jpg", "Maison méditérranéenne", "3 rue distillerie", 5, 400, 700),
  //   Habitation(5, "appartement.jpg", "Appartement méditérranéenne", "5 rue Campotel", 2, 50, 300),
  //   Habitation(6, "appartement.jpg", "Appartement méditérranéenne", "5 rue Campotel", 2, 50, 300),
  //   Habitation(7, "appartement.jpg", "Appartement méditérranéenne", "5 rue Campotel", 2, 50, 300),
  //   Habitation(8, "appartement.jpg", "Appartement méditérranéenne", "5 rue Campotel", 2, 50, 300),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des ${this.isHouseList ? 'maison' : 'appartements'}"),

      ),
      body: Center(
        child: ListView.builder(
          itemCount: _habitation.length,
          itemBuilder: (context, index) => _buildRow(_habitation[index],context),
          itemExtent: 285,
        ),
      ),
    );
  }

  _buildRow(Habitation habitation, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HabitationDetails(habitation)),
          );
        },
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/locations/${habitation.image}',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            _buildDetails(habitation),
          ],
        ),
      ),
    );
  }

  _buildDetails(Habitation habitation) {
    var format = NumberFormat("### €");

    return Container(
      child: Column(
        children: [

          Row(
            children: [
              Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(habitation.libelle),
                  subtitle: Text(habitation.adresse),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(format.format(habitation.prixmois),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 22,
                ),),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     HabitationOption("${habitation.chambres} personnes", Icons.group),
          //     HabitationOption("${habitation.superficie} m2", Icons.fit_screen),
          //   ],
          // ),
          HabitationFeaturesWidget(habitation),
        ],
      ),
    );
  }


}