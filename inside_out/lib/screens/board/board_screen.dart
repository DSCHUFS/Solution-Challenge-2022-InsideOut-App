import 'package:flutter/material.dart';
import 'package:inside_out/screens/board/create_board_screen.dart';
import 'package:inside_out/screens/board/my_board_screen.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  BoardState createState() => BoardState();
}

class BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                width: 40,
                height: 40,
                image: AssetImage("assets/Board.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, right: 20.0),
              child: Text(
                'Mind Board',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'SeoulNamsan',
                ),
              ),
            ),
          ],
        ),
      ),
      body: _buildContent(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildContent(BuildContext context) {
    List numbers = ["1", "2", "3", "4", "5"];
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage("assets/medal.png"),
                      ),
                    ),
                    Text(
                      'Weekly Popular',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage("assets/medal.png"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFE0E0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: numbers.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(5.0),
                              elevation: 10,
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/card.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child:
                      const Divider(color: Color(0xFFB9B9B9), thickness: 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage("assets/clock.png"),
                      ),
                    ),
                    Text(
                      'Recently Pinned',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage("assets/clock.png"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color(0xFFB7BAFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: numbers.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(5.0),
                              elevation: 10,
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/card.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ),

                // View Mine & New Post Buttons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomElevatedButton(
                          child: const Text(
                            'View Mine',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "SeoulNamsan",
                            ),
                          ),
                          height: 50,
                          color: const Color(0xFFFFEAC1),
                          borderRadius: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyBoard(),
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomElevatedButton(
                          child: const Text(
                            'New Post',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "SeoulNamsan",
                            ),
                          ),
                          height: 50,
                          color: const Color(0xFFFFD78D),
                          borderRadius: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CreateBoard(),
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
