import 'package:flutter/material.dart';
import 'package:test_design/pages/ajouter_patient.dart';
import 'package:test_design/pages/catalogue_page.dart';
import 'package:test_design/pages/coordonn%C3%A9es_ajout_patient.dart';
import 'package:test_design/pages/mdp_1.dart';
import 'package:test_design/pages/mdp_2.dart';
import 'package:test_design/pages/modifier_compte.dart';
import 'package:test_design/pages/modifier_mdp_compte.dart';
import 'package:test_design/pages/page_connexion.dart';
import 'package:test_design/pages/parametre_compte.dart';
import 'package:test_design/pages/patient_page.dart';
import 'package:test_design/pages/sav_page.dart';
import 'package:test_design/pages/snack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //retourne le widget MaterialApp
    return MaterialApp(
      //Enlever le bannière debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),

      //Initialisation de la route de départ
      initialRoute: '/connexion',
      routes: <String, WidgetBuilder>{
        //toutes les routes de l'application
        '/connexion': (BuildContext context) => const PageConnexion(),
        '/mdp1': (BuildContext context) => const Mdp1Page(),
        '/mdp2': (BuildContext context) => const Mdp2Page(),
        '/snack': (BuildContext context) => const SnackPage(),
        '/patients': (BuildContext context) => const PatientPage(),
        '/catalogue': (BuildContext context) => const CataloguePage(),
        '/sav': (BuildContext context) => const SavPage(),
        '/compte': (BuildContext context) => const ParametreCompte(),
        '/modifiercompte': (BuildContext context) => const ModifierCompte(),
        '/modifiermdpcompte': (BuildContext context) =>
            const ModifiermdpCompte(),
        '/ajouterpatient': (BuildContext context) => const PageAjouterPatient(),
        '/coordonneepatient': (BuildContext context) =>
            const CorrdonneesPatient(),
      },
    );
  }
}
