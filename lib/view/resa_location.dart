import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/main.dart';
import 'package:location/share/location_style.dart';
import 'package:location/view/login_page.dart';
import '../models/habitation.dart';

class ResaLocation extends StatefulWidget {
  const ResaLocation({Key? key}) : super(key: key);

  @override
  State<ResaLocation> createState() => _ResaLocationState();
}

class _ResaLocationState extends State<ResaLocation> {
  List<Habitation> habitation = [];
  DateTime dateDebut = DateTime.now();
  DateTime dateFin = DateTime.now();
  String nbPersonnes = '1';
  List<OptionPayanteCheck> optionPayanteCheck = [];
  var format = NumberFormat("### €");

  @override
  Widget build(BuildContext context) {
    // _loadOptionPayante();
    return Scaffold(
      appBar: AppBar(
        title: Text("Réservation"),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          _buildResume(),
          _buildDates(),
          _buildNbPersonnes(),
          _buildOptionPayante(context),
          _buildTotalWidget(),
          _buildRentButton(),
        ],
      ),
    );
  }

  Widget _buildResume(){
    return ListTile(
      leading: Icon(Icons.home),
      title: Text("Libelle"),
      subtitle: Text("Adresse"),
      tileColor: Colors.grey.shade200,

    );
  }

  Widget _buildDates() {
    return Container(
      height: 50,
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Icon(Icons.calendar_month),
          GestureDetector(
              child: Text("Date Début", style: TextStyle(color: Colors.blue.shade900),),
            onTap: () {
              dateTimeRangePicker() async{
                DateTimeRange? datePicked = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(DateTime.now().year),
                  lastDate: DateTime(DateTime.now().year + 2),
                  initialDateRange: DateTimeRange(start: dateDebut, end: dateFin),
                  cancelText: 'Annuler',
                  confirmText: 'Valider',
                  locale: const Locale("fr", "FR"),
                );
                if(datePicked != null) {
                  setState((){
                    dateDebut = datePicked.start;
                    dateFin = datePicked.end;
                  });
                }
              }
            }
          ),
          CircleAvatar(
            backgroundColor: Colors.blue.shade900,
            child: Icon(Icons.arrow_forward, color: Colors.lightBlue,),
          ),
          Icon(Icons.calendar_month),
          GestureDetector(
              child: Text("Date Fin", style: TextStyle(color: Colors.blue.shade800),),
              onTap: () {
                dateTimeRangePicker() async{
                  DateTimeRange? datePicked = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(DateTime.now().year),
                    lastDate: DateTime(DateTime.now().year + 2),
                    initialDateRange: DateTimeRange(start: dateDebut, end: dateFin),
                    cancelText: 'Annuler',
                    confirmText: 'Valider',
                    locale: const Locale("fr", "FR"),
                  );
                  if(datePicked != null) {
                    setState((){
                      dateDebut = datePicked.start;
                      dateFin = datePicked.end;
                    });
                  }
                }
              }
          ),
        ],
      ),
    );
  }

  Widget _buildNbPersonnes(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: DropdownButtonHideUnderline(
            child :DropdownButton(
            iconSize: 14,
            borderRadius: BorderRadius.circular(20)
                .copyWith(topLeft: Radius.circular(0)),
            isExpanded: true,
            hint: Text('Nombres de personnes', style: TextStyle(fontSize: 15)),
            value: nbPersonnes,
            items: [
              DropdownMenuItem( value: "1", child: Text('1')),
              DropdownMenuItem( value: "2", child: Text('2')),
              DropdownMenuItem( value: "3", child: Text('3')),
              DropdownMenuItem( value: "4", child: Text('4')),
              DropdownMenuItem( value: "5", child: Text('5')),
              DropdownMenuItem( value: "6", child: Text('6')),
              DropdownMenuItem( value: "7", child: Text('7')),
              DropdownMenuItem( value: "8", child: Text('8')),
            ],
            onChanged: (val) {
              setState(() {
                nbPersonnes = val.toString();
              });
            }
          ),
        ),
    );
  }

  Widget _buildOptionPayante(BuildContext context){
    var width = (MediaQuery.of(context).size.width) - 15;
    bool isChecked = true;
    return Wrap(
      children: Iterable.generate(
        3,
          (i) => Container(
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
            color: Colors.grey.shade200,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(5.0),
                  child: Icon(Icons.shopping_cart_checkout),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Libelle Option Payante (Prix)",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Description Option Payante",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
              ],
          ),
        ),
      ).toList(),
    );
  }

  Widget _buildTotalWidget(){
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border(
          top: BorderSide(color: Colors.blue.shade900),
          bottom: BorderSide(color: Colors.blue.shade900),
          right: BorderSide(color: Colors.blue.shade900),
          left: BorderSide(color: Colors.blue.shade900),
        ),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TOTAL"),
          ],
        ),
      ),
    );
  }

  Widget _buildRentButton(){
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: LocationStyle.backgroundColorPurple,
      ),
      child: Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage(),
            )
          );
      },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Louer",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

