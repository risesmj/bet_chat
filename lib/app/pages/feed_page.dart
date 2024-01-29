import 'package:bet_chat/app/entities/day_news_entity.dart';
import 'package:bet_chat/app/entities/post_entity.dart';
import 'package:flutter/material.dart';

import '../widgets/day_news_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late final List<DayNewsEntity> listDayNews;
  late final List<PostEntity> listPosts;

  @override
  void initState() {
    super.initState();

    listPosts = [
      PostEntity(
        userName: 'Matheus José',
        comment: 'Que dia ensolorado!',
        urlPicture: '',
        date: '15:22',
      ),
      PostEntity(
        userName: 'Kalebe Cleiton',
        comment: 'Que dia lindo!',
        urlPicture: '',
        date: '15:21',
      ),
      PostEntity(
        userName: 'John Wick',
        comment: 'Que dia amarelo!',
        urlPicture: '',
        date: '15:20',
      ),
    ];

    listDayNews = [
      DayNewsEntity(date: 'Jan 6, 2023', posts: listPosts),
      DayNewsEntity(
        date: 'Jan 5, 2023',
        posts: listPosts,
      ),
      DayNewsEntity(
        date: 'Jan 4, 2023',
        posts: listPosts,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_sharp),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.account_circle,
                color: Colors.red,
                size: 40,
              ),
            ),
          )
        ],
        centerTitle: false,
        title: const Text('Bet Chat'),
        backgroundColor: const Color(0xFF1d418a),
        elevation: 0,
        toolbarHeight: 80,
      ),
      backgroundColor: const Color(0xFF1d418a),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        backgroundColor: Colors.white,
        onTap: (index) {},
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "Bet Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fireplace_rounded),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games_rounded),
            label: "Game Center",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: "Lobby",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Lobby",
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 80,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: ListView.builder(
                itemCount: listDayNews.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) => DayNewsWidget(
                      date: listDayNews[index].date,
                      posts: listDayNews[index].posts,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                alignment: Alignment.bottomCenter,
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 40,
                    ),
                    Container(
                      width: 280,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35.0),
                        ),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            fillColor: Colors.white,
                            hintText: 'Write somenthing...',
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  30,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
