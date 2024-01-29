import 'package:bet_chat/app/entities/post_entity.dart';
import 'package:bet_chat/app/widgets/reaction_widget.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final PostEntity postEntity;

  const PostWidget({
    super.key,
    required this.postEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.account_circle,
              color: Color(0xFF1d418a),
              size: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postEntity.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  postEntity.date,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              postEntity.comment,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Row(
            children: const [
              ReactionWidget(
                iconData: Icons.face_rounded,
                counter: 10,
              ),
              SizedBox(
                width: 10,
              ),
              ReactionWidget(
                iconData: Icons.face_retouching_natural,
                counter: 10,
              ),
              SizedBox(
                width: 10,
              ),
              ReactionWidget(
                iconData: Icons.face_retouching_off_outlined,
                counter: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
