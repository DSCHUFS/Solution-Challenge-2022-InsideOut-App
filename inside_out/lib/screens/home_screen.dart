import 'package:flutter/material.dart';
import 'package:inside_out/screens/diary/create_diary_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Today's Challenge
                Container(
                  height: 180,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage("assets/Todo.png"),
                              ),
                            ),
                            Text(
                              'Today’s Challenge',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'SeoulNamsan',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFEA6C4),
                  ),
                ),

                // Recent Diaries
                Positioned(
                  top: 480,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      height: 180,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image(
                                    width: 30,
                                    height: 30,
                                    image: AssetImage("assets/Diary.png"),
                                  ),
                                ),
                                Text(
                                  'Recent Diaries',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontFamily: 'SeoulNamsan',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFB0D5FF),
                      ),
                    ),
                  ),
                ),

                // Sleep
                Positioned(
                  top: 150,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFEFB5), shape: BoxShape.circle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              width: 80,
                              height: 80,
                              image: AssetImage("assets/Sleep.png"),
                            ),
                          ),
                          Text(
                            '7 Hours 45 Minutes',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'SeoulNamsan',
                            ),
                          ),
                          Text(
                            '110% of Goal',
                            style: TextStyle(
                              color: Color(0xFFD07D00),
                              fontSize: 15,
                              fontFamily: 'SeoulNamsan',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Mind Board
                Positioned(
                  top: 300,
                  left: 160,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                        color: Color(0xFFB7BAFF), shape: BoxShape.circle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                            width: 80,
                            height: 80,
                            image: AssetImage("assets/Board.png"),
                          ),
                        ),
                        Text(
                          'Mind Board',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'SeoulNamsan',
                          ),
                        ),
                        Text(
                          'Write your heart down',
                          style: TextStyle(
                            color: Color(0xFF245EA5),
                            fontSize: 13,
                            fontFamily: 'SeoulNamsan',
                          ),
                        ),
                      ],
                    ),
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
