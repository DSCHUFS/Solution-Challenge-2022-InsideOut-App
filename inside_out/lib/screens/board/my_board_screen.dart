import 'package:flutter/material.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class MyBoard extends StatefulWidget {
  const MyBoard({Key? key}) : super(key: key);

  @override
  MyBoardState createState() => MyBoardState();
}

class MyBoardState extends State<MyBoard> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'My Card',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'SeoulNamsan',
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(50, (index) {
                  return Card(
                    margin: EdgeInsets.all(7.0),
                    elevation: 5,
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
            )
          ],
        ),
      ),
    );
  }
}
