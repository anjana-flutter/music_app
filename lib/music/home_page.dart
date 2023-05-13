import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/music/screen/route.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  final player = AudioPlayer();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade200
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BuildmyNav(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(children: [
                        SizedBox(width: 10),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white38),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.tune_rounded),
                              color: Colors.grey.shade400,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white38,
                              hintText: 'Search',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey.shade400),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide.none)),
                        )),
                      ]),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Trending right now',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              //add border radius
                              child: Image.asset(
                                "assets/images (1).jpeg",
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              //add border radius
                              child: Image.asset(
                                "assets/images (2).jpeg",
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              //add border radius
                              child: Image.asset(
                                "assets/images (3).jpeg",
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              //add border radius
                              child: Image.asset(
                                "assets/images (4).jpeg",
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              //add border radius
                              child: Image.asset(
                                "assets/images (5).jpeg",
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                                matchTextDirection: true,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.all(10),
                                child: InkWell(
                                  child: Text(data[index]['data']),
                                  onTap: () {},
                                ));
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/images (4).jpeg')),
                                        ),
                                      ),
                                      Text("Who says "),
                                      IconButton(
                                          onPressed: () {
                                            player.play(AssetSource(
                                                'Who-Says(PagalWorld).mp3'));
                                            player.resume();
                                          },
                                          icon: Icon(Icons.play_circle_outline)),
                                      IconButton(
                                          onPressed: () {
                                            player.pause();
                                          },
                                          icon: Icon(Icons.pause_circle))
                                    ],
                                  ));
                            },
                            itemCount: 5,
                            scrollDirection: Axis.vertical),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
