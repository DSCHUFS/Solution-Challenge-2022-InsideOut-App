import 'package:flutter/material.dart';
import 'package:inside_out/screens/home_screen.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  CheckState createState() => CheckState();
}

class CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
      backgroundColor: Colors.white,
    ); // Scaffold
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
                  const SizedBox(height: 60.0),
                  const Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/cloud.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Do you feel sad\nthese days?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  CustomElevatedButton(
                      child: const Text(
                        "I'm not sad at all.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      height: 50,
                      color: const Color(0xFFFFEFB5),
                      borderRadius: 25,
                      onPressed: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                      child: const Text(
                        "I'm not sad at all.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      height: 50,
                      color: const Color(0xFFD7E9FF),
                      borderRadius: 25,
                      onPressed: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                      child: const Text(
                        "I'm not sad at all.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      height: 50,
                      color: const Color(0xFFD7E9FF),
                      borderRadius: 25,
                      onPressed: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                      child: const Text(
                        "I'm not sad at all.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                      height: 50,
                      color: const Color(0xFFD7E9FF),
                      borderRadius: 25,
                      onPressed: () {}),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFD7E9FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 20,
                          offset: Offset(0.0, 0.75),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomElevatedButton(
                        child: const Text(
                          "I won't do it today",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "SeoulNamsan",
                          ),
                        ),
                        color: Colors.white,
                        borderRadius: 8,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        height: 45),
                  ]),
                ])
          ],
        ),
      ),
    );
  }
}
