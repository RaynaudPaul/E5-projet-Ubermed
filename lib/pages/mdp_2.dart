import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'couleurs.dart';

class Mdp2Page extends StatefulWidget {
  const Mdp2Page({super.key});

  @override
  State<Mdp2Page> createState() => _Mdp2PageState();
}

class _Mdp2PageState extends State<Mdp2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // même design que la page précédente et page connexion
            margin: const EdgeInsets.symmetric(horizontal: 68, vertical: 114),
            padding:
                const EdgeInsets.only(left: 89, right: 90, top: 30, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'LOGO',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            width: 375,
            padding: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mot de passe oublié',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Styles.bgColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  Text(
                    'Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Styles.bgColor,
                    ),
                  ),
                  const Gap(4),
                  TextFormField(
                    //champ de texte pour le code envoyé par SMS
                    decoration: InputDecoration(
                      hintText: 'Code reçu par SMS',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    //champ de texte pour le nouveau mot de passe
                    'Nouveau mot de passe',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Styles.bgColor,
                    ),
                  ),
                  const Gap(4),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Votre nouveau mot de passe',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Styles.bgColor,
                      ),
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    //champ de texte pour la confirmation du nouveau mot de passe
                    'Confirmer le mot de passe',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Styles.bgColor,
                    ),
                  ),
                  const Gap(4),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Votre nouveau mot de passe',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Styles.bgColor,
                      ),
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const Gap(115),
                  SizedBox(
                    height: 50,
                    width: 325,
                    child: MaterialButton(
                      color: Styles.bgColor,
                      onPressed: () {
                        //redirection vers la page de connexion bouton valider
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/connexion', (route) => route.isFirst);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Valider',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Styles.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 50,
                    width: 325,
                    child: MaterialButton(
                      color: Styles.primaryColor,
                      onPressed: () {
                        //redirection vers la page de connexion bouton retourner à la connexion
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/connexion', (route) => route.isFirst);
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Styles.bgColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Retourner à la connexion',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Styles.bgColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
