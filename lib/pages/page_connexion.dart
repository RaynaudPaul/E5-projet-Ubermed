import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/couleurs.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //fond d'arrière plan en bleu foncé
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
          // partie blanche
          Container(
            height: 550,
            width: 375,
            padding: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            // partie blanche avec les champs de connexion
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
                          'Connexion',
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
                    'Identifiant',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Styles.bgColor,
                    ),
                  ),
                  const Gap(4),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Votre identifiant',
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
                    'Mot de passe ',
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
                  const Gap(10),
                  //text cliquable pour mot de passe oublié et diriger vers la page mdp 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/mdp1');
                        },
                        child: Text(
                          'Mot de passe oublié',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Styles.bgColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(115),
                  SizedBox(
                    height: 50,
                    width: 325,
                    //bouton pour se connecter et diriger vers la page snack
                    child: MaterialButton(
                      color: Styles.bgColor,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/snack', (route) => false);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Se connecter',
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
                        print("OK");
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Styles.bgColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'S\'inscrire',
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
