import 'package:location/models/type_habitat.dart';

import 'habitation.dart';

class HabitationsData {
  static final data = [
    {
      "id": 1,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [
        {"id": 2, "libelle": "Lac", "description": "Base de loisirs à 2 km"},
        {"id": 1, "libelle": "Internet", "description": "Wifi et Fibre"}
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 1, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 30.0
        },
        {
          "id": {"habitationId": 1, "optionpayanteId": 3},
          "optionpayante": {
            "id": 3,
            "libelle": "Linge de maison",
            "description": "Linge de toilette pour la salle de bain"
          },
          "prix": 20.0
        },
        {
          "id": {"habitationId": 1, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 60.0
        }
      ],
      "libelle": "Maison provençale",
      "description": "Une description",
      "adresse": "12 Rue du Coq qui chante",
      "idVille": 56,
      "image": "maison.jpg",
      "habitantsmax": 8,
      "chambres": 3,
      "lits": 3,
      "sdb": 1,
      "superficie": 92,
      "prixmois": 600.0
    },
    {
      "id": 2,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {"id": 1, "libelle": "Internet", "description": "Wifi et Fibre"}
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 2, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 40.0
        }
      ],
      "libelle": "Appartement centre ville",
      "description": "bla bla",
      "adresse": "Rue du centre",
      "idVille": 99,
      "image": "appartement.jpg",
      "habitantsmax": 4,
      "chambres": 1,
      "lits": 2,
      "sdb": 1,
      "superficie": 50,
      "prixmois": 555.0
    },
    {
      "id": 3,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [],
      "optionpayantes": [],
      "libelle": "Maison 3",
      "description": "Desc Maison 3",
      "adresse": "Rue 3",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 100,
      "prixmois": 500.0
    },
    {
      "id": 4,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [],
      "libelle": "Maison 4",
      "description": "Desc Maison 4",
      "adresse": "Rue 4",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 100,
      "prixmois": 500.0
    },
    {
      "id": 5,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [],
      "optionpayantes": [
        {
          "id": {"habitationId": 5, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 50.0
        },
        {
          "id": {"habitationId": 5, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 40.0
        }
      ],
      "libelle": "Maison 5",
      "description": "Desc Maison 5",
      "adresse": "Rue 5",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 4,
      "sdb": 1,
      "superficie": 120,
      "prixmois": 600.0
    },
    {
      "id": 6,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [],
      "optionpayantes": [],
      "libelle": "Maison 6",
      "description": "Desc Maison 6",
      "adresse": "Rue 6",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 100,
      "prixmois": 500.0
    },
    {
      "id": 7,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [],
      "libelle": "Maison 7",
      "description": "Desc Maison 7",
      "adresse": "Rue 7",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 4,
      "sdb": 1,
      "superficie": 120,
      "prixmois": 600.0
    },
    {
      "id": 8,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [],
      "optionpayantes": [],
      "libelle": "Maison 8",
      "description": "Desc Maison 8",
      "adresse": "Rue 8",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 100,
      "prixmois": 500.0
    },
    {
      "id": 9,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [],
      "optionpayantes": [],
      "libelle": "Maison 9",
      "description": "Desc Maison 9",
      "adresse": "Rue 9",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 4,
      "sdb": 1,
      "superficie": 120,
      "prixmois": 600.0
    },
    {
      "id": 10,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [],
      "libelle": "Maison 10",
      "description": "Desc Maison 10",
      "adresse": "Rue 10",
      "idVille": 4,
      "image": "maison.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 100,
      "prixmois": 500.0
    },
    {
      "id": 11,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 11, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 40.0
        }
      ],
      "libelle": "Appartement 4",
      "description": "Desc Appartement 4",
      "adresse": "Rue 4",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 70,
      "prixmois": 350.0
    },
    {
      "id": 12,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 12, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 50.0
        },
        {
          "id": {"habitationId": 12, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 20.0
        }
      ],
      "libelle": "Appartement 5",
      "description": "Desc Appartement 5",
      "adresse": "Rue 5",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 3,
      "sdb": 1,
      "superficie": 80,
      "prixmois": 400.0
    },
    {
      "id": 13,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 13, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 40.0
        },
        {
          "id": {"habitationId": 13, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 30.0
        }
      ],
      "libelle": "Appartement 6",
      "description": "Desc Appartement 6",
      "adresse": "Rue 6",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 70,
      "prixmois": 350.0
    },
    {
      "id": 14,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 14, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 50.0
        },
        {
          "id": {"habitationId": 14, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 20.0
        }
      ],
      "libelle": "Appartement 7",
      "description": "Desc Appartement 7",
      "adresse": "Rue 7",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 3,
      "sdb": 1,
      "superficie": 80,
      "prixmois": 400.0
    },
    {
      "id": 15,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 15, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 30.0
        },
        {
          "id": {"habitationId": 15, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 40.0
        }
      ],
      "libelle": "Appartement 8",
      "description": "Desc Appartement 8",
      "adresse": "Rue 8",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 70,
      "prixmois": 350.0
    },
    {
      "id": 16,
      "typehabitat": {"id": 2, "libelle": "Appartement"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 16, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 50.0
        },
        {
          "id": {"habitationId": 16, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 20.0
        }
      ],
      "libelle": "Appartement 9",
      "description": "Desc Appartement 9",
      "adresse": "Rue 9",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 6,
      "chambres": 3,
      "lits": 3,
      "sdb": 1,
      "superficie": 80,
      "prixmois": 400.0
    },
    {
      "id": 17,
      "typehabitat": {"id": 1, "libelle": "Maison"},
      "items": [
        {
          "id": 3,
          "libelle": "Climatisation",
          "description": "Climatisation réversible"
        }
      ],
      "optionpayantes": [
        {
          "id": {"habitationId": 17, "optionpayanteId": 1},
          "optionpayante": {
            "id": 1,
            "libelle": "Ménage",
            "description": "A la fin du séjour"
          },
          "prix": 40.0
        },
        {
          "id": {"habitationId": 17, "optionpayanteId": 2},
          "optionpayante": {
            "id": 2,
            "libelle": "Drap de lit",
            "description": "Pour l'ensemble des lits"
          },
          "prix": 30.0
        }
      ],
      "libelle": "Appartement 10",
      "description": "Desc Appartement 10",
      "adresse": "Rue 10",
      "idVille": 3,
      "image": "appartement.jpg",
      "habitantsmax": 5,
      "chambres": 2,
      "lits": 3,
      "sdb": 1,
      "superficie": 70,
      "prixmois": 350.0
    }
  ];

  static List<Habitation> buildList() {
    List<Habitation> _list = data.map((item) => Habitation.fromJson(item)).toList();
    // List<Habitation> _list = [];
    //
    // _list.add(Habitation(1, TypeHabitat(1, "Maison"), "maison.jpg", "Maison 1", "1 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(2, TypeHabitat(2, "Maison"), "maison.jpg", "Maison 2", "2 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(3, TypeHabitat(3, "Maison"), "maison.jpg", "Maison 3", "3 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(4, TypeHabitat(4, "Maison"), "maison.jpg", "Maison 4", "4 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(5, TypeHabitat(5, "Maison"), "maison.jpg", "Maison 5", "5 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(6, TypeHabitat(6, "Maison"), "maison.jpg", "Maison 6", "6 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(7, TypeHabitat(7, "Maison"), "maison.jpg", "Maison 7", "7 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(8, TypeHabitat(8, "Maison"), "maison.jpg", "Maison 8", "8 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(9, TypeHabitat(9, "Maison"), "maison.jpg", "Maison 9", "9 rue GG", 5, 3, 4, 2, 60, 500));
    // _list.add(Habitation(10, TypeHabitat(10, "Maison"), "maison.jpg", "Maison 10", "10 rue GG", 5, 3, 4, 2, 60, 500));

    return _list;
  }
}
