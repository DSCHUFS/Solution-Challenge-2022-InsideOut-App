import 'package:flutter/material.dart';
import 'package:inside_out/screens/diary/create_diary_screen.dart';

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  DiaryState createState() => DiaryState();
}

class DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   centerTitle: false,
      //   elevation: 0,
      //   title: Row(
      //     children: const [
      //       Text(
      //         'Deep Inside',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 30,
      //           fontFamily: 'SeoulNamsan',
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Image(
      //           width: 30,
      //           height: 30,
      //           image: AssetImage("assets/pen.png"),
      //         ),
      //       )
      //     ],
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Image.asset('assets/pen.png'),
      //       iconSize: 30,
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => const CreateDiary()),
      //         );
      //       },
      //     )
      //   ],
      // ),
      body: _buildContent(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildContent(BuildContext context) {
    List filteredUsers = ["1", "2", "3"];
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      const Text(
                        'Deep Inside',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'SeoulNamsan',
                        ),
                      ),
                      IconButton(
                        icon: Image.asset('assets/pen.png'),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateDiary()),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      child: const Text(
                        "All",
                        style: TextStyle(
                          color: Color(0xFF989898),
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      onPressed: () => print("All"),
                    ),
                    TextButton(
                      child: const Text(
                        "Dream",
                        style: TextStyle(
                          color: Color(0xFF989898),
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      onPressed: () => print("Dream"),
                    ),
                    TextButton(
                      child: const Text(
                        "Emotion",
                        style: TextStyle(
                          color: Color(0xFF989898),
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      onPressed: () => print("Emotion"),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 0,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('assets/dream.png'),
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 15,
                              left: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Title",
                                    style: TextStyle(
                                      fontFamily: "SeoulNamsan",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 240,
                                  ),
                                  Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage('assets/cloud.png'),
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                              top: 50,
                              left: 20,
                              child: SizedBox(
                                width: 300,
                                child: Divider(
                                    color: Color(0xFF90C8E8), thickness: 2.0),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 20,
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adip\nelit, sed do eiusmod tempor incididunt ut labo \ndolore magna aliqua ut enim ad."),
                            ),
                            Positioned(
                                top: 135,
                                left: 200,
                                child: Row(
                                  children: [
                                    Image(
                                      height: 20,
                                      width: 20,
                                      image: AssetImage('assets/bookmark.png'),
                                    ),
                                    Text(
                                      " Emotion, ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "SeoulNamsan",
                                      ),
                                    ),
                                    Text(
                                      "Horror",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "SeoulNamsan",
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
