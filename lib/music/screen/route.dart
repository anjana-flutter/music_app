import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/music/home_page.dart';

import '../detailPage.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/music.jpg'),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}

List<Map> data = [
  {'data': "Trending "},
  {'data': "Rock "},
  {'data': "Hiphop "},
  {'data': "Melody "},
  {'data': "Electro "},
  {'data': "Trending "},
  {'data': "Trending "},
];

List<Map> image = [
  {'image': "assets/images.jpeg"},
  {'image': "assets/images (1).jpeg"},
  {'image': "assets/images (2).jpeg"},
  {'image': "assets/images (3).jpeg"},
  {'image': "assets/images (4).jpeg"},
  {'image': "assets/images (5).jpeg"},
  {'image': "assets/images (6).jpeg"},
  {'image': "assets/images (1).jpeg"},
  {'image': "assets/images (3).jpeg"},
];

class audio extends StatefulWidget {
  const audio({Key? key}) : super(key: key);

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        Center(
          child: ElevatedButton(
            child: Text("play"),
            onPressed: () {
              player.play(AssetSource('Who-Says(PagalWorld).mp3'));
            },
          ),
        ),
        SizedBox(width: 10),
        Center(
          child: ElevatedButton(
            child: Text("stop"),
            onPressed: () {
              player.stop();
            },
          ),
        ),
        SizedBox(width: 10),
        Center(
          child: ElevatedButton(
            child: Text("pause"),
            onPressed: () {
              player.pause();
            },
          ),
        ),
        SizedBox(width: 10),
        Center(
          child: ElevatedButton(
            child: Text("resume"),
            onPressed: () {
              player.resume();
            },
          ),
        ),
      ],
    ));
  }
}

class BuildmyNav extends StatefulWidget {
  const BuildmyNav({Key? key}) : super(key: key);

  @override
  State<BuildmyNav> createState() => _BuildmyNavState();
}

class _BuildmyNavState extends State<BuildmyNav> {
  @override
  int pageIndex = 0;
  final pages = [
    Home_page(),
    // Categ(),
  ];

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home_page()));
            },
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Detail()));
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
