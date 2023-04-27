import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/couleurs.dart';

class ModifiermdpCompte extends StatefulWidget {
  const ModifiermdpCompte({super.key});

  @override
  State<ModifiermdpCompte> createState() => _ModifiermdpCompteState();
}

class _ModifiermdpCompteState extends State<ModifiermdpCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          //bouton pour revenir à la page précédente
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(top: 65, left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Styles.bgColor,
                  ),
                  const Gap(19),
                  Text(
                    'Modifier le mot de passe ',
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
          const Gap(40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Caroline Joubert',
                style: TextStyle(
                  color: Styles.bgColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const Gap(29),
          //formulaire avec le mot de passe actuel, mettre le nouveau mot de passe et la confirmation du nouveau mot de passe
          Container(
            padding: const EdgeInsets.only(left: 25, right: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mot de passe actuel',
                  style: TextStyle(
                    color: Styles.bgColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                const Gap(4),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Votre mot de passe',
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
                const Gap(45),
                Text(
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
                    hintText: 'Votre mot de passe',
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
              ],
            ),
          ),
          const Gap(312),
          //bouton pour enregistrer les modifications
          Container(
            margin: const EdgeInsets.only(left: 26, right: 24),
            child: MaterialButton(
              height: 50,
              onPressed: () {
                print('pressed');
              },
              color: Styles.bgColor,
              textColor: Colors.white,
              child: Text(
                'Enregistrer',
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
          const Gap(29),
        ],
      ),
    );
  }
}
