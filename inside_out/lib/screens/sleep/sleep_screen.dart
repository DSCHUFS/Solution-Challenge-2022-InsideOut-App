import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inside_out/screens/sleep/sleep_analytics_screen.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class Sleep extends StatefulWidget {
  const Sleep({Key? key}) : super(key: key);

  @override
  SleepState createState() => SleepState();
}

class SleepState extends State<Sleep> {
  DateTime sleepTimeGoal = DateTime.now();
  DateTime wakeupTimeGoal = DateTime.now();

  DateTime sleepTimeRecord = DateTime.now();
  DateTime wakeupTimeRecord = DateTime.now();

  void showDatePicker(String selectedDate) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.time,
              onDateTimeChanged: (value) {
                if (value != selectedDate) {
                  setState(() {
                    if (selectedDate == 'sleep') {
                      sleepTimeGoal = value;
                    } else {
                      wakeupTimeGoal = value;
                    }
                  });
                }
              },
              initialDateTime: DateTime.now(),
            ),
          );
        });
  }

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Setting Sleeping Goal',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'SeoulNamsan',
              ),
            ),
          ),

          // View Sleep Analytics Screen Button
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomElevatedButton(
              child: const Text(
                'View More',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "SeoulNamsan",
                ),
              ),
              height: 50,
              color: const Color(0xFFFFF9E1),
              borderRadius: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SleepAnalytics(),
                  ),
                );
              },
            ),
          ),

          // Set Sleep & Wakeup Time
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: CustomElevatedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          width: 80,
                          height: 80,
                          image: AssetImage("assets/sleep_time.png"),
                        ),
                      ),
                      Text(
                        DateFormat('hh:mm a').format(sleepTimeGoal),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                    ],
                  ),
                  height: 170,
                  color: const Color(0xFF7070AB),
                  borderRadius: 20,
                  onPressed: () {
                    showDatePicker('sleep');
                  },
                ),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.40,
                child: CustomElevatedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          width: 80,
                          height: 80,
                          image: AssetImage("assets/wakeup_time.png"),
                        ),
                      ),
                      Text(
                        DateFormat('hh:mm a').format(wakeupTimeGoal),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "SeoulNamsan",
                        ),
                      ),
                    ],
                  ),
                  height: 170,
                  color: const Color(0xFFFFCD67),
                  borderRadius: 20,
                  onPressed: () {
                    showDatePicker('wakeup');
                  },
                ),
              ),
              const Spacer(),
            ],
          ),

          //
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomElevatedButton(
              child: const Text(
                "Let's Go To Sleep!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "SeoulNamsan",
                ),
              ),
              height: 50,
              color: const Color(0xFFFFF9E1),
              borderRadius: 20,
              onPressed: () {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
