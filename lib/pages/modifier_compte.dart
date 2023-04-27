import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import 'couleurs.dart';

class ModifierCompte extends StatefulWidget {
  const ModifierCompte({super.key});

  @override
  State<ModifierCompte> createState() => _ModifierCompteState();
}

class _ModifierCompteState extends State<ModifierCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 18),
            child: InkWell(
              //bouton pour revenir à la page précédente
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Styles.bgColor,
                  ),
                  Text(
                    'Modifier le compte',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Styles.bgColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(62),
          //informations sur l'utilisateur
          Container(
            padding: const EdgeInsets.only(left: 26, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prénom',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  height: 40,
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Caroline',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Styles.bgColor,
                    ),
                  ),
                ),
                const Gap(20),
                Text(
                  'Nom',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  height: 40,
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Joubert',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Styles.bgColor,
                    ),
                  ),
                ),
                const Gap(20),
                Text(
                  'Téléphone',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  height: 40,
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '06 xx xx 89 52',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Styles.bgColor,
                    ),
                  ),
                ),
                const Gap(20),
                Text(
                  'Adresse',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  height: 40,
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23 rue François Perrin, Limoges',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Styles.bgColor,
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Styles.bgColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Text(
                  'Adresse mail',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  height: 40,
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'caroline.joubert@mail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Styles.bgColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(175),
          //bouton pour enregistrer les modifications
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: MaterialButton(
              onPressed: () {
                print("c'est ok");
              },
              child: Text("Eregistrer"),
              textColor: Colors.white,
              color: Styles.bgColor,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
