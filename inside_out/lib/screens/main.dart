import 'package:flutter/material.dart';
import 'package:inside_out/screens/board/board_screen.dart';
import 'package:inside_out/screens/diary/diary_screen.dart';
import 'package:inside_out/screens/home_screen.dart';
import 'package:inside_out/screens/signup_screen.dart';
import 'package:inside_out/screens/sleep_screen.dart';
import 'package:inside_out/screens/todo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  int currentTab = 2;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = SignUp();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.black;
    const backgroundColor = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: currentTab == 2 ? 10 : 0,
              backgroundColor: const Color(0xFF98BEF5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/Home.png'),
                    width: 28,
                    height: 28,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SeoulNamsan',
                        color: currentTab == 2 ? Colors.black : Colors.grey),
                  )
                ],
              ),
              onPressed: () {
                setState(() {
                  currentScreen = Home();
                  currentTab = 2;
                });
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Left Tab Bar Item
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          elevation: currentTab == 0 ? 10 : 0,
                          color: currentTab == 0
                              ? const Color(0xFFDDEBFF)
                              : Colors.white,
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = const Diary();
                              currentTab = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                image: AssetImage('assets/Diary.png'),
                                width: 35,
                                height: 35,
                              ),
                              Text(
                                'Diary',
                                style: TextStyle(
                                    fontFamily: 'SeoulNamsan',
                                    color: currentTab == 0
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          elevation: currentTab == 1 ? 10 : 0,
                          color: currentTab == 1
                              ? const Color(0xFFDDEBFF)
                              : Colors.white,
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = Board();
                              currentTab = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                image: AssetImage('assets/Board.png'),
                                width: 35,
                                height: 35,
                              ),
                              Text(
                                'Board',
                                style: TextStyle(
                                    fontFamily: 'SeoulNamsan',
                                    color: currentTab == 1
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Right Tab Bar Item
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          elevation: currentTab == 3 ? 10 : 0,
                          color: currentTab == 3
                              ? const Color(0xFFDDEBFF)
                              : Colors.white,
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = Todo();
                              currentTab = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                image: AssetImage('assets/Todo.png'),
                                width: 35,
                                height: 35,
                              ),
                              Text(
                                'Todo',
                                style: TextStyle(
                                    fontFamily: 'SeoulNamsan',
                                    color: currentTab == 3
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          elevation: currentTab == 4 ? 10 : 0,
                          color: currentTab == 4
                              ? const Color(0xFFDDEBFF)
                              : Colors.white,
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = Sleep();
                              currentTab = 4;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage('assets/Sleep.png'),
                                width: 35,
                                height: 35,
                              ),
                              Text(
                                'Sleep',
                                style: TextStyle(
                                    fontFamily: 'SeoulNamsan',
                                    color: currentTab == 4
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
