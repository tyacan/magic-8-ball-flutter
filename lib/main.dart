import 'dart:math';
import 'package:flutter/material.dart';

// step 1 main
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

// step 2 StatelessWidget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

// step 3 StatefulWidget
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      // step 4 FlatButton
      child: FlatButton(
        onPressed: () {
          setState(() {
            print('I got clicked');
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
        child: Image.asset('images/ball' + ballNumber.toString() + '.png'),
      ),
    );
  }
}
