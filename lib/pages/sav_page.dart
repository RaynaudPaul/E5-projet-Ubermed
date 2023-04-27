import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/bottom_bar.dart';
import 'package:test_design/pages/couleurs.dart';

class SavPage extends StatelessWidget {
  const SavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //definit la couleur de fond de la page et appel la barre de navigation
      backgroundColor: Styles.primaryColor,
      bottomNavigationBar: const NavBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Row(
              // Row le nom de la page et le bouton pour le profil
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SAV',
                  style: TextStyle(
                    color: Styles.bgColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  //redirige vers la page profil
                  onTap: () {
                    Navigator.of(context).pushNamed('/compte');
                  },
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                    color: Styles.bgColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Demandes de SAV',
                  style: TextStyle(
                    color: Styles.bgColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const Gap(3),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet euismod aliquam a lacus commodo odio. Justo pulvinar velit blandit .',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(30),
                Text(
                  'Patient *',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                TextFormField(
                  // formulaire pour la recherche du patient
                  decoration: InputDecoration(
                    hintText: 'Rechercher',
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
                const Gap(20),
                Text(
                  'Équipement concerné',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  width: 310,
                  padding: const EdgeInsets.only(left: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  // liste déroulante pour le choix de l'équipement
                  child: DropdownButton<String>(
                    hint: Text('Sélectionner'),
                    underline: Container(
                      height: 2,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Equipement 1',
                        child: Text('Equipement 1'),
                      ),
                      DropdownMenuItem(
                        value: 'Equipement 2',
                        child: Text('Equipement 2'),
                      ),
                      DropdownMenuItem(
                        value: 'Equipement 3',
                        child: Text('Equipement 3'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
                const Gap(20),
                Text(
                  'Commentaire *',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                // formulaire pour le commentaire
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  onChanged: (String text) {
                    print(text);
                  },
                ),
                const Gap(110),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            // bouton pour envoyer la demande
            child: MaterialButton(
              onPressed: () {
                print("c'est ok");
              },
              child: Text("Envoyer"),
              textColor: Colors.white,
              color: Styles.bgColor,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const Gap(167),
        ],
      ),
    );
  }
}
