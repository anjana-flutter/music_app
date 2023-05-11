import 'package:flutter/material.dart';
import 'package:music_app/music/screen/route.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.deepPurple,
            appBar: CustomAppBar(),
            body: ListView(children: [
              Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Recent Favourites",
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w300),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.all(15),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(45),
                                          child: Container(
                                            child: Hero(
                                              tag: '${image[index]['image']}',
                                              child: Image.asset(
                                                  image[index]['image'],
                                                  fit: BoxFit.cover),
                                            ),
                                            height: 150,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(45)),
                                          )));
                                },
                                scrollDirection: Axis.vertical,
                                itemCount: 6)),
                        Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.all(15),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(45),
                                        child: Container(
                                          child: Hero(
                                            tag: '${image[index]['image']}',
                                            child: Image.asset(
                                                image[index]['image'],
                                                fit: BoxFit.cover),
                                          ),
                                          height: 150,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(45)),
                                        )));
                              },
                              scrollDirection: Axis.vertical,
                              itemCount: image.length,
                            ))
                      ],
                    )
                  ])
                ],
              )
            ]),
            bottomNavigationBar: BuildmyNav()));
  }
}
