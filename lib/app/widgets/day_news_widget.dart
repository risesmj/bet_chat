import 'package:bet_chat/app/entities/post_entity.dart';
import 'package:bet_chat/app/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class DayNewsWidget extends StatelessWidget {
  final String date;
  final List<PostEntity> posts;

  const DayNewsWidget({
    super.key,
    required this.date,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 120,
                height: 1,
                color: Colors.grey[300],
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
              Container(
                width: 120,
                height: 1,
                color: Colors.grey[300],
              )
            ],
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider();
            },
            physics: const NeverScrollableScrollPhysics(),
            itemCount: posts.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => PostWidget(
              postEntity: posts[index],
            ),
          ),
        ],
      ),
    );
  }
}
