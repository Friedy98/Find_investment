import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CommentsTab extends StatelessWidget {
  const CommentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (_, item){
        return Container(
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.only(bottom: 10),
          child: const Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage("https://i.pravatar.cc/100"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John Doe',
                          style:
                          TextStyle(fontWeight: FontWeight.w600)),
                      Text("porteur de projet",
                          style: TextStyle( fontSize: 10)),
                    ]
                  ),
                  Spacer(),
                    Icon(Icons.access_time_filled, size: 15),
                    SizedBox(width: 10),
                    Text(
                      "12 Juil 2025",
                      style: TextStyle( fontSize: 10),
                    ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply dummy text of the printing "
                    "and typesetting industry. Lorem Ipsum has been the industry's standard "
                    "dummy text ever since the 1500s, when an unknown printer took a galley of "
                    "typeand scrambled it to make a type specimen book.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        );
      },
      padding: const EdgeInsets.all(12),
    );
  }
}