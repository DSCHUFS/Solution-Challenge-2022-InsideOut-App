import 'package:flutter/material.dart';

class CreateDiary extends StatefulWidget {
  const CreateDiary({Key? key}) : super(key: key);

  @override
  CreateDiaryState createState() => CreateDiaryState();
}

class CreateDiaryState extends State<CreateDiary> {
  String currentEmotion = "moon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              'Deep Inside',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'SeoulNamsan',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                width: 30,
                height: 30,
                image: AssetImage("assets/pen.png"),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            color: Colors.black,
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/write.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),

                      // Dream / Emotion Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            child: const Text(
                              "Dream",
                              style: TextStyle(
                                color: Color(0xFFA3AEB5),
                                fontSize: 18,
                                fontFamily: "Share",
                              ),
                            ),
                            onPressed: () => print("Dream"),
                          ),
                          const Text(
                            "/",
                            style: TextStyle(
                              color: Color(0xFFA3AEB5),
                              fontSize: 18,
                              fontFamily: "Share",
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              "Emotion",
                              style: TextStyle(
                                color: Color(0xFF989898),
                                fontSize: 18,
                                fontFamily: "Share",
                              ),
                            ),
                            onPressed: () => print("Emotion"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Divider(
                            color: Color(0xFF90C8E8), thickness: 2.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/$currentEmotion.png',
                          ),
                          iconSize: 80,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xFF90C8E8),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  // contentPadding: EdgeInsets.only(top: 10.0),
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/moon.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "moon";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/rain.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "rain";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                            IconButton(
                                              icon:
                                                  Image.asset('assets/sun.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "sun";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/wind.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "wind";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/cloud.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "cloud";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/desert.png'),
                                              iconSize: 50,
                                              onPressed: () {
                                                setState(() {
                                                  currentEmotion = "desert";
                                                  Navigator.pop(context);
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    height: 150,
                                    // width: 200,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: TextField(
                          maxLines: null,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Write a Diary',
                            hintStyle: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 17,
                              fontFamily: "SeoulNamsan",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Row(
                              children: const [
                                Text(
                                  "Complete",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: "SeoulNamsan",
                                  ),
                                ),
                                Image(
                                  width: 32,
                                  height: 32,
                                  image: AssetImage('assets/pen.png'),
                                ),
                              ],
                            ),
                            onPressed: () => print("Complete"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
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
