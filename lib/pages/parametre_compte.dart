import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/couleurs.dart';
import 'package:test_design/pages/modifier_compte.dart';
import 'package:test_design/pages/modifier_mdp_compte.dart';
import 'package:test_design/pages/widgets/animation_left.dart';

class ParametreCompte extends StatefulWidget {
  const ParametreCompte({super.key});

  @override
  State<ParametreCompte> createState() => _ParametreCompteState();
}

class _ParametreCompteState extends State<ParametreCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //definit le fond d'arrière plan
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          //bouton pour revenir à la page précédente
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 56),
            height: 33,
            width: 134,
            child: InkWell(
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
                    'Compte',
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
          //informmations sur l'utilisateur
          Column(
            children: [
              Text(
                'Caroline Joubert',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Styles.bgColor,
                ),
              ),
              const Gap(50),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 21),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Styles.bgColor,
                          size: 19,
                        ),
                        const Gap(13),
                        Text(
                          '06 xx xx 89 52',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Styles.bgColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Styles.bgColor,
                          size: 19,
                        ),
                        const Gap(13),
                        Text(
                          '23 rue François Perrin, Limoges',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Styles.bgColor,
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Styles.bgColor,
                          size: 19,
                        ),
                        const Gap(13),
                        Text(
                          'caroline.joubert@mail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Styles.bgColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(30),
              //boutons pour modifier le profil, le mot de passe et se déconnecter
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 21),
                child: Column(
                  children: [
                    InkWell(
                      //bouton pour modifier le profil et va vers la page modifier profil
                      onTap: () {
                        Navigator.of(context).push(
                            CustomPageRoute(widget: const ModifierCompte()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outlined,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                          const Gap(18),
                          Text(
                            'Modifier le profil',
                            style: TextStyle(
                              color: Styles.bgColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          const Gap(93),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                        ],
                      ),
                    ),
                    const Gap(40),
                    InkWell(
                      //bouton pour modifier le mot de passe et va vers la page modifier mot de passe
                      onTap: () {
                        Navigator.of(context).push(
                            CustomPageRoute(widget: const ModifiermdpCompte()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.password,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                          const Gap(18),
                          Text(
                            'Modifier le mot de passe',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Styles.bgColor,
                            ),
                          ),
                          const Gap(36),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                        ],
                      ),
                    ),
                    const Gap(40),
                    InkWell(
                      //bouton pour se déconnecter et va vers la page de connexion
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/connexion', (route) => false);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                          const Gap(18),
                          Text(
                            'Déconnexion',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Styles.bgColor,
                            ),
                          ),
                          const Gap(119),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Styles.bgColor,
                            size: 19,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(326),
            ],
          ),
        ],
      ),
    );
  }
}
