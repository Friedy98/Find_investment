import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MyGroupsTab extends StatelessWidget {
  const MyGroupsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: const [
        GroupListTile(name: "Agrico Guys", members: "13 membres"),
        GroupListTile(name: "Investissor Grando", members: "23 membres"),
      ],
    );
  }
}

class GroupListTile extends StatelessWidget {
  final String name, members;
  const GroupListTile({super.key, required this.name, required this.members});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage("https://picsum.photos/200"),
        ),
        title: Text(name,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Colors.black
            )),
        subtitle: Text(members,
            style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
            color: Colors.black
        )),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (_) => const GroupDetailPage()),
          // );
        },
      ),
    ).animate(delay: Duration(milliseconds: 100))
        .fadeIn()
        .slideY(begin: 0.3);
  }
}