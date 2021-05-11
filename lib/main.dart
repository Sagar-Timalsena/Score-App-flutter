import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Score is ",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 80,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.black,
                  child: Text(
                    'Increase',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: increaseNumber,
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  color: Colors.red,
                  child: Text('Decreased',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: decreaseNumber,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
