
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:location/models/habitation.dart';
import 'package:location/models/type_habitat.dart';
import 'package:location/share/location_style.dart';
import 'package:location/share/location_text_style.dart';
import 'package:location/view/habitation_list.dart';
import 'package:location/services/habitation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Mes Locations'),

      // routes: {
      //   Profil.routeName: (context) => const Profil(),
      //   LoginPage.routeName: (context) => const LoginPage('/'),
      //   LocationList.routeName: (context) => const LocationList(),
      //   ValidationLocation.routeName: (context) => const ValidationLocation(),
      //
      // },
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [Locale("en"),Locale("fr")],

    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final HabitationService service = HabitationService();
  late List<TypeHabitat> _typeHabitat;
  late List<Habitation> _habitation;
  MyHomePage({required this.title, Key? key}) : super(key: key) {_habitation = service.getHabitationTop10(); _typeHabitat = service.getTypeHabitats();}

  // var _typeHabitat = [TypeHabitat(1,"Maison"),TypeHabitat(2,"Appartement")];
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
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            _buildTypeHabitat(context),
            SizedBox(height: 20),
            _buildDerniereLocation(context),
          ],
        ),
      ),
    );
  }

  _buildTypeHabitat(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              _typeHabitat.length,
              (index) => _buildHabitat(context, _typeHabitat[index]),
        ),
      ),
    );
  }

  _buildHabitat(BuildContext context, TypeHabitat typeHabitat) {
    var icon = Icons.house;
    switch (typeHabitat.id) {
      case 2:
        icon = Icons.apartment;
        break;
      default:
        icon = Icons.home;
    }
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: LocationStyle.backgroundColorPurple,
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HabitationList(typeHabitat.id == 1),
              ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white70,
              ),
              SizedBox(width: 5),
              Text(
                typeHabitat.libelle,
                style: LocationTextStyle.regularWhiteTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildDerniereLocation(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        itemCount: _habitation.length,
        itemExtent: 220,
        itemBuilder: (context, index) => _buildRow(_habitation[index], context),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  _buildRow(Habitation habitation, BuildContext context) {
    var format = NumberFormat("### €");

    return Container(
      width: 240,
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/locations/${habitation.image}',
              fit: BoxFit.fitWidth
            ),
          ),
            Text(
              habitation.libelle,
              style: LocationTextStyle.regularTextStyle,
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  habitation.adresse,
                  style: LocationTextStyle.regularTextStyle,
                ),
              ],
            ),
            Text(
              format.format(habitation.prixmois),
              style: LocationTextStyle.boldTextStyle,
            ),
        ],
      ),
    );
  }

}

class BottomNavBarWidget extends StatelessWidget {
  final int indexSelected;
  const BottomNavBarWidget(this.indexSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isUserNotConnected = true;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: indexSelected,

      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
      ],
    );
  }
}






