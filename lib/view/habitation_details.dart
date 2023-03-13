import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/models/habitation.dart';
import 'package:location/share/location_style.dart';
import 'package:location/view/resa_location.dart';
import 'package:location/view/share/habitation_features_widget.dart';
import '../share/location_text_style.dart';

class HabitationDetails extends StatefulWidget {
  final Habitation _habitation;
  const HabitationDetails(this._habitation, {Key? key}) : super(key: key);

  @override
  State<HabitationDetails> createState() => _HabitationDetailsState();
}

class _HabitationDetailsState extends State<HabitationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._habitation.libelle),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/locations/${widget._habitation.image}',
              fit: BoxFit.fitWidth,
            ),
          ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Text(widget._habitation.adresse),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     HabitationOption( "${widget._habitation.nbpersonne} personnes", Icons.group),
            //     HabitationOption("${widget._habitation.chambres} chambres", Icons.bed),
            //     HabitationOption( "${widget._habitation.superficie} m2", Icons.fit_screen),
            //   ],
            // ),

            HabitationFeaturesWidget(widget._habitation),
            _buildItems(),
            _buildOptionsPayantes(),
            _buildRentButton(),
        ],
      ),
    );
  }

  _buildRentButton() {
    var format = NumberFormat("### €");

    return Container(
      decoration: BoxDecoration(
        color: LocationStyle.backgroundColorPurple,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              format.format(widget._habitation.prixmois),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResaLocation(),
                    ));
                print('Louer habitation');
              },
              child: Text('Louer'),
            ),
          ),
        ],
      ),
    );
  }

  _buildItems() {
    var width = (MediaQuery.of(context).size.width / 2) - 15;

    return Wrap(

      // Ajouté Divider
      spacing: 2.0,
      children: Iterable.generate(
        widget._habitation.option.length,
            (i) => Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(2.0),
              ),
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: [
              Text(
                widget._habitation.option[i].libelle,
              ),
              Text(
                widget._habitation.option[i].description,
                style: LocationTextStyle.regularGreyTextStyle,
              ),
            ],
          ),

        ),
      ).toList(),
    );
  }

  // Ajouté Divider
  _buildOptionsPayantes() {
    var format = NumberFormat("### €");

    return Wrap(
      spacing: 2.0,
      children: Iterable.generate(
        widget._habitation.optionpayantes.length,
            (i) => Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(2.0),
              ),
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    widget._habitation.optionpayantes[i].libelle,
                  ),
                  Text(
                    format.format(widget._habitation.optionpayantes[i].prix),
                    style: LocationTextStyle.regularGreyTextStyle,
                  ),
                ],
              ),
        ),
      ).toList(),
    );
  }
}
