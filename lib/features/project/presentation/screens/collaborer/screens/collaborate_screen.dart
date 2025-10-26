import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollaborateScreen extends ConsumerStatefulWidget {
  const CollaborateScreen({super.key});

  @override
  ConsumerState<CollaborateScreen> createState() => _CollaborateScreenState();
}

class _CollaborateScreenState extends ConsumerState<CollaborateScreen> {
  final TextEditingController _searchCtrl = TextEditingController();

  final List<Map<String, dynamic>> _decouvrirList = [
    {
      'name': 'Baume François',
      'role': 'Porteur de projet',
      'projects': 13,
      'verified': true,
    },
    {
      'name': 'Stéphane Goodwin',
      'role': 'Porteur de projet',
      'projects': 13,
      'verified': false,
    },
    {
      'name': 'Baume François',
      'role': 'Porteur de projet',
      'projects': 13,
      'verified': true,
    },
  ];

  final List<Map<String, dynamic>> _collaborateurs = [
    {'name': 'Akoa Azaph'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Découvrir + Collaborateurs
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Découvrir"),
              Tab(text: "Collaborateurs"),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 12),

            // --- Barre de recherche ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _searchCtrl,
                decoration: InputDecoration(
                  hintText: "Rechercher",
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Theme.of(context).dialogBackgroundColor,
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // --- Contenu des onglets ---
            Expanded(
              child: TabBarView(
                children: [
                  _buildDecouvrir(context),
                  _buildCollaborateurs(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// --- Onglet Découvrir ---
  Widget _buildDecouvrir(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Découvrez d’autres porteurs de projets comme vous dans les mêmes domaines",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _decouvrirList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.70,
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final person = _decouvrirList[index];
              return _buildCollaborateurCard(person);
            },
          ),
        ],
      ),
    );
  }

  /// --- Onglet Collaborateurs ---
  Widget _buildCollaborateurs(BuildContext context) {
    return ListView.builder(
      itemCount: _collaborateurs.length,
      itemBuilder: (context, index) {
        final person = _collaborateurs[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(person['name']),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        );
      },
    );
  }

  /// --- Carte de collaborateur (onglet Découvrir) ---
  Widget _buildCollaborateurCard(Map<String, dynamic> person) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFFE8EAF6),
              child: Icon(Icons.person, size: 28, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/3.2,
                  height: 40,
                  child: Center(
                    child: Text(
                      person['name'], style: TextStyle(),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                if (person['verified'])
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(Icons.verified, color: Colors.blue, size: 16),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.yellow.shade600,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                person['role'],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${person['projects']} projets actifs",
              style: const TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Demande de collaboration envoyée"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.primary)
                ),
                child: const Text(
                  "Collaborer",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
