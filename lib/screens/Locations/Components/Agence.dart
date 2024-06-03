import 'package:flutter/material.dart';

class AgenceVoyage extends StatelessWidget {
  const AgenceVoyage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Agence> allAgence = [...Agences._Agence1,...Agences._Agence2,...Agences._Agence3,...Agences._Agence4,...Agences._Agence5,...Agences._Agence6,...Agences._Agence7,...Agences._Agence8,...Agences._Agence9,...Agences._Agence10];


    return Scaffold(
      body: ListView.builder(
        itemCount: allAgence.length,
        itemBuilder: (BuildContext context, int index) {
          Agence agence = allAgence[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0), // Add padding to the top
                child: CircleAvatar(
                  backgroundColor: Color(0xFFFF7643),
                  child: Text(
                    agence.name.substring(0, 1),
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Change the letter color to white
                    ),
                  ),
                ),
              ),
              title: Text(
                agence.name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        agence.Numtele,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        agence.Email,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                // Add action to perform when an agency is clicked
              },
            ),
          );
        },
      ),
    );
  }
}

class Agence {
  final String name;
  final String Numtele;
  final String Email;

  Agence({
    required this.name,
    required this.Numtele,
    required this.Email,
  });
}

class Agences {
  static final List<Agence> _Agence1 = [
    Agence(
      name: "ACCES HOLIDAYS",
      Numtele: "+212522474848",
      Email: "info@weareaccess.ma",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence2 = [
    Agence(
      name: "ACTIV TRAVEL",
      Numtele: "+212522270404",
      Email: "info@activ-travel.net",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence3 = [
    Agence(
      name: "AH VOYAGES",
      Numtele: "+212522864363",
      Email: "arabholidays@gmail.com",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence4 = [
    Agence(
      name: "AL JAZIRA TOURISME TRAVEL SERVICES",
      Numtele: "+212522260484",
      Email: "a.aljazira@menara.ma",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence5 = [
    Agence(
      name: "ALR TOURS",
      Numtele: "+212522864320",
      Email: "alrtoursagence13@gmail.com",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence6 = [
    Agence(
      name: "AMITIE MAROC CHINE VOYAGES",
      Numtele: "+212522301665",
      Email: "lin1851@hotmail.com ",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence7 = [
    Agence(
      name: "ASK MOROCCO TRAVEL",
      Numtele: "+212522786566",
      Email: "okimoto@askmotra.com",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence8 = [
    Agence(
      name: "COSMOPOLITE TRAVEL & EVENTS",
      Numtele: "+212522234122",
      Email: "info@cosmopolite.voyage",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence9 = [
    Agence(
      name: "DOUNIA TRAVEL",
      Numtele: "+212522277359",
      Email: "info@douniatravel.com",
    ),
    // Add more agencies here if needed
  ];
  static final List<Agence> _Agence10 = [
    Agence(
      name: "EL BAHI VOYAGES",
      Numtele: "+212522202006 +212522202165",
      Email: "rkia.elbahi@yahoo.com",
    ),
    // Add more agencies here if needed
  ];
}
