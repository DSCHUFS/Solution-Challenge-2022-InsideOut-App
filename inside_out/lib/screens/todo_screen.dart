import 'package:flutter/material.dart';
import 'package:inside_out/screens/todo_calendar.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  TodoState createState() => TodoState();
}

class TodoState extends State<Todo> {
  bool completed = false;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('assets/Todo.png'),
                  ),
                  const Text(
                    'Daily\nRecommendation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SeoulNamsan',
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('assets/calendar.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TodoCalendar()),
                      );
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEA6C4), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEA6A6), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEC6A6), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('assets/todo_icon.png'),
                  ),
                  Spacer(),
                  const Text(
                    'Add Todos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SeoulNamsan',
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEA6C4), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEA6A6), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: completed == true
                          ? Image.asset('assets/check_button.png')
                          : Image.asset('assets/blank_button.png'),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          completed = !completed;
                          print(completed);
                        });
                      },
                    ),
                    const Text(
                      'Read 30 Page a Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SeoulNamsan',
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFEC6A6), spreadRadius: 3),
                  ],
                ),
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}