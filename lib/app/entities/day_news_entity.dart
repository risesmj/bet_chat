import 'package:bet_chat/app/entities/post_entity.dart';

class DayNewsEntity {
  final String date;
  final List<PostEntity> posts;

  DayNewsEntity({
    required this.date,
    required this.posts,
  });
}
