import 'package:find_invest_mobile/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';

class GroupDetails extends ConsumerStatefulWidget {
  const GroupDetails({super.key});

  @override
  ConsumerState<GroupDetails> createState() => _GroupDetailsState();
}

class _GroupDetailsState extends ConsumerState<GroupDetails>
    with SingleTickerProviderStateMixin {

  List members = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
                onPressed: ()=> context.pop(),
                icon: const Icon(Icons.arrow_back)),
            const CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://picsum.photos/100"),
              ),
            ),
          ],
        ),
        leadingWidth: 100,
        title: Text("Groupe"),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          if(index == 0){
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/400/200"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Positioned circle avatar
                      Positioned(
                        bottom: -35, // move it slightly outside the container
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 54,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage("https://picsum.photos/100"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Chip(
                            label: SizedBox(
                              width: 100,
                              child: Text("Signaler",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            ),
                            backgroundColor: Colors.redAccent,
                          ),
                          SizedBox(width: 10),
                          Chip(
                            label: SizedBox(
                              width: 100,
                              child: Text("Rejoindre le group",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            ),
                            backgroundColor: AppColors.primary,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(color: Colors.grey, height: 2),
                      SizedBox(height: 20),
                      Text("Description du group",
                          style: TextStyle(
                            // fontStyle: FontStyle.italic,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      SizedBox(height: 15),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                          style: TextStyle(
                              fontSize: 12
                          )
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Membres du group",
                              style: TextStyle(
                                // fontStyle: FontStyle.italic,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          Spacer(),
                          Text("12 membres",
                              style: TextStyle(
                                // fontStyle: FontStyle.italic,
                                  fontSize: 10,
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            );
          }else{
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                  ),
                  title: const Text("Fokou Roberto",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                      )),
                  subtitle: const Align(
                    alignment: Alignment.topLeft,
                    child: Chip(
                      label: Text("Porteur de projet",
                          style: TextStyle(
                              fontSize: 10, color: Colors.white)),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  trailing: index == 1 ?
                  Chip(
                    label: const Text("Admin du groupe",
                        style: TextStyle(
                            fontSize: 10, color: AppColors.primary)),
                    backgroundColor: AppColors.primary.withOpacity(0.1),
                  ) : const SizedBox(),
                  onTap: () {},
                )
              ],
            ).animate(delay: Duration(milliseconds: (index - 1) * 100))
                .fadeIn()
                .slideY(begin: 0.3);
          }
        },
      ),
    );
  }
}