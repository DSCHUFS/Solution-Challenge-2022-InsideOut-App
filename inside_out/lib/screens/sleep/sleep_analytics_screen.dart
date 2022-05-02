import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:time_chart/time_chart.dart';

class SleepAnalytics extends StatefulWidget {
  const SleepAnalytics({Key? key}) : super(key: key);

  @override
  SleepAnalyticsState createState() => SleepAnalyticsState();
}

class SleepAnalyticsState extends State<SleepAnalytics> {
  // Data must be sorted.
  final data = [
    DateTimeRange(
      start: DateTime(2021, 2, 24, 23, 15),
      end: DateTime(2021, 2, 25, 7, 30),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 22, 1, 55),
      end: DateTime(2021, 2, 22, 9, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 20, 0, 25),
      end: DateTime(2021, 2, 20, 7, 34),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 17, 21, 23),
      end: DateTime(2021, 2, 18, 4, 52),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 13, 6, 32),
      end: DateTime(2021, 2, 13, 13, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 1, 9, 32),
      end: DateTime(2021, 2, 1, 15, 22),
    ),
    DateTimeRange(
      start: DateTime(2021, 1, 22, 12, 10),
      end: DateTime(2021, 1, 22, 16, 20),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'March 3, Sunday',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'SeoulNamsan',
          ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 15.0,
                  animation: true,
                  percent: 0.86,
                  center: Text(
                    '86%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "SeoulNamsan",
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  linearGradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[
                      Color(0xFF9FB2F9),
                      Color(0xFFD5BAE3),
                      Color(0xFFFAD76D),
                    ],
                  ),
                  rotateLinearGradient: true,
                ),
                Spacer(),
                Text(
                  '5 Hours\n30 Minutes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: "SeoulNamsan",
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          // Sleep Time Goal
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFA5B3F7),
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                ),
                child: Center(
                  child: Text(
                    '7h',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "SeoulNamsan",
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Sleep Time Record
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCD67),
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                ),
                child: Center(
                  child: Text(
                    '5h 30min',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "SeoulNamsan",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          // Sleep Regularity Text
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sleep Regularity',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'SeoulNamsan',
              ),
            ),
          ),

          // Sleep Regularity Chart
          TimeChart(
            data: data,
            chartType: ChartType.time,
            viewMode: ViewMode.weekly,
            barColor: const Color(0xFF7070AB),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
