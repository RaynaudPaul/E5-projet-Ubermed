import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/couleurs.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

import 'bottom_bar.dart';

extension LatLngE on LatLng {
  static LatLng fromPosition(Position pos) =>
      LatLng(pos.latitude, pos.longitude);
}

class PatientPage extends StatefulWidget {
  const PatientPage({super.key});

  @override
  State<PatientPage> createState() => _PatientPageState();
}

// classe qui permet de récupérer la position de l'utilisateur
class _PatientPageState extends State<PatientPage> {
  var _currentPosition = LatLng(0, 0);
  final MapController _mapController = MapController();

// variable qui permet de stocker la position de l'utilisateur
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

//requete pour récupérer la position de l'utilisateur
  void _getCurrentLocation() async {
    Geolocator.requestPermission().then((value) async {
      if (value != LocationPermission.denied) {
        try {
          final Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high);
          setState(() {
            _currentPosition = LatLng(position.latitude, position.longitude);
          });
        } catch (e) {
          print(e);
        }
      }
    });
  }

//retourner la position de l'utilisateur de façon précise et rapide
  Future<LatLng> get currentLatLng async {
    var perms = await Geolocator.requestPermission();
    if (![LocationPermission.denied, LocationPermission.deniedForever]
        .contains(perms)) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return LatLngE.fromPosition(position);
    } else {
      return LatLng(0, 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //définir la couleur de fond de la page ains ique l'appel de la bottombar
      backgroundColor: Styles.primaryColor,
      bottomNavigationBar: const NavBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 58, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Patients',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Styles.bgColor,
                  ),
                ),
                InkWell(
                  //rediriger vers le profil de l'utilisateur
                  onTap: () {
                    Navigator.of(context).pushNamed('/compte');
                  },
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Styles.bgColor,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          const Gap(28),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 264,
                  height: 40,
                  child: TextFormField(
                    //barre de recherche
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      hintText: 'Rechercher...',
                      suffixIcon: Icon(
                        Icons.search,
                        color: Styles.bgColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const Gap(5),
                Container(
                  decoration: BoxDecoration(
                    color: Styles.bgColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.settings_accessibility_outlined,
                      color: Styles.primaryColor),
                ),
              ],
            ),
          ),
          //widgets qui permet d'afficher la carte
          Expanded(
            child: Stack(
              children: [
                FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    center: LatLng(0, 0),
                    zoom: 13.0,
                  ),
                  children: [
                    TileLayer(
                      //afficher la carte
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          //afficher le pointeur de la position de l'utilisateur
                          point: _currentPosition,
                          builder: (context) => Container(
                            child: const Icon(
                              Icons.person_pin_circle,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //bouton qui permet de se recentrer sur la position de l'utilisateur
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: FloatingActionButton(
                      backgroundColor: Styles.primaryColor,
                      child: Icon(
                        Icons.my_location,
                        color: Styles.bgColor,
                      ),
                      onPressed: () async {
                        _mapController.move(await currentLatLng, 10);
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: FloatingActionButton(
                      heroTag: 'btn1',
                      backgroundColor: Styles.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Styles.bgColor,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/ajouterpatient');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
