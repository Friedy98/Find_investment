import 'package:find_invest_mobile/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        PostCard(
          groupName: "Agrico Guys",
          members: "13 membres",
          postText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
          imageUrl: "https://picsum.photos/400/250",
          onTap: ()=>context.push("/investor/group/details"),
          onMoreTap: () {  },
        ),
        PostCard(
          groupName: "Agrico Guys",
          members: "13 membres",
          postText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
          imageUrl: "https://picsum.photos/400/250?2",
          onTap: ()=>context.push("/investor/group/details"),
          onMoreTap: () {  },
        ),
      ],
    );
  }
}

class PostCard extends StatelessWidget {
  final String groupName, members, postText, imageUrl;
  final VoidCallback? onTap;
  final VoidCallback? onMoreTap;

  const PostCard({
    super.key,
    required this.groupName,
    required this.members,
    required this.postText,
    required this.imageUrl,
    required this.onTap,
    required this.onMoreTap,

  });

  @override
  Widget build(BuildContext context) {
    String displayText = postText.length > 120 ? postText.substring(0, 120) + "..." : postText;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
            title: Text(groupName,
                style: const TextStyle(
                    fontSize: 14)),
            subtitle: Text(members,
                style: const TextStyle(
                    fontSize: 10)),
            trailing: InkWell(
              onTap: onTap,
              child: Chip(
                label: const Text("Rejoindre",
                    style: TextStyle(
                        fontSize: 10, color: AppColors.primary)),
                backgroundColor: AppColors.primary.withOpacity(0.1),
              ),
            )
          ),
          if (imageUrl.isNotEmpty)
            Image.network(imageUrl, fit: BoxFit.cover, height: 180, width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                text: displayText,
                style: TextStyle(fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                      text: postText.length > 20 ? "voir plus" : "",
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: AppColors.primary,
                      )),
                ],
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            ],
          )
        ],
      ),
    ).animate(delay: Duration(milliseconds: 100))
        .fadeIn()
        .slideY(begin: 0.3);
  }
}