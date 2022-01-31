import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  @override
  BoardState createState() => BoardState();
}

class BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Board'),
    );
  }
}
