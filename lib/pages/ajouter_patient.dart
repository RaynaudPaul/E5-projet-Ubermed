import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_design/pages/couleurs.dart';

class PageAjouterPatient extends StatefulWidget {
  const PageAjouterPatient({super.key});

  @override
  State<PageAjouterPatient> createState() => _PageAjouterPatientState();
}

class _PageAjouterPatientState extends State<PageAjouterPatient>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Styles.primaryColor,
          appBar: AppBar(
            toolbarHeight: 125,
            elevation: 0,
            backgroundColor: Styles.primaryColor,
            bottom: TabBar(
              indicatorColor: Color(0xFF144B5F),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Color(0xFF144B5F),
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Informations',
                ),
                Tab(
                  text: 'Coordonnées',
                ),
                Tab(
                  text: 'Documents',
                ),
              ],
              onTap: (index) {
                if (index == 1) {
                  _tabController.animateTo(index);
                } else {
                  print('OK');
                }
              },
            ),
            title: Container(
              padding: const EdgeInsets.only(left: 26, top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop('/patients');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Styles.bgColor,
                      size: 27,
                    ),
                    const Gap(7),
                    Text(
                      'Ajouter un patient',
                      style: TextStyle(
                        color: Styles.bgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 26, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                Text(
                  'Civilité *',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Styles.bgColor,
                  ),
                ),
                const Gap(4),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(left: 26, right: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton<String>(
                    hint: Text('Sélectionner'),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Styles.bgColor,
                      size: 35,
                    ),
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
                  'Nom *',
                  style: TextStyle(
                    color: Styles.bgColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                const Gap(4),
                TextFormField(
                  // formulaire pour la recherche du patient
                  decoration: InputDecoration(
                    hintText: 'Entrez un nom',
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
                  'Prenom',
                  style: TextStyle(
                    color: Styles.bgColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                const Gap(4),
                TextFormField(
                  // formulaire pour la recherche du patient
                  decoration: InputDecoration(
                    hintText: 'Entrez un prénom',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
