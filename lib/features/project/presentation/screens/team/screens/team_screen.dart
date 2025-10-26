import 'package:find_invest_mobile/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TeamScreen extends ConsumerStatefulWidget {
  const TeamScreen({
    super.key,
  });

  @override
  ConsumerState<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends ConsumerState<TeamScreen>
    with SingleTickerProviderStateMixin {

  final List<Map<String, dynamic>> _collaborateurs = [
    {'name': 'Akoa\'s team'},
    {'name': 'Fokou\'s team'},
  ];

  @override
  Widget build(BuildContext context) {
    // print('TeamScreen build');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              // controller: _searchCtrl,
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
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _collaborateurs.length,
              itemBuilder: (context, index) {
                final person = _collaborateurs[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text(person['name']),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push("/project-owner/group/members"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}