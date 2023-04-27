import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'couleurs.dart';

class Mdp1Page extends StatefulWidget {
  const Mdp1Page({super.key});

  @override
  State<Mdp1Page> createState() => _Mdp1PageState();
}

class _Mdp1PageState extends State<Mdp1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          // même design que la page connexion
          Container(
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
            height: 550,
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
                  // le formulaire pour insérer le numéro de téléphone
                  Text(
                    'Téléphone',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Styles.bgColor,
                    ),
                  ),
                  const Gap(4),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ex : 06 xx xx xx 45',
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
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Un code sera envoyé à ce numéro pour réinitialiser\n votre mot de passe.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Styles.bgColor,
                        ),
                      ),
                    ],
                  ),
                  const Gap(115),
                  SizedBox(
                    height: 50,
                    width: 325,
                    child: MaterialButton(
                      color: Styles.bgColor,
                      onPressed: () {
                        // aller à la page suivante
                        Navigator.of(context).pushNamed('/mdp2');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Envoyer',
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
                        // retourner à la page de connexion
                        Navigator.of(context).pop();
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
