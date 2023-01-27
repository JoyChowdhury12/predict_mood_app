// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('My Mood'),
          backgroundColor: Colors.black26,
        ),
        body: MyMoodPage(),
      ),
    );
  }
}

class MyMoodPage extends StatefulWidget {
  @override
  _MyMoodPageState createState() => _MyMoodPageState();
}

class _MyMoodPageState extends State<MyMoodPage> {
  String myCurrentMood = "happy";

  void changeMyMood(String mood) {
    setState(() {
      myCurrentMood = mood;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'images/$myCurrentMood.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: Text('Happy'),
                onPressed: () {
                  changeMyMood("happy");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: Text('Sad'),
                onPressed: () {
                  changeMyMood("sad");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: Text('Angry'),
                onPressed: () {
                  changeMyMood("angry");
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: Text('Laugh'),
                onPressed: () {
                  changeMyMood("laughing");
                },
              ),
            ),
            //Get students to create the second die as a challenge
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: Text('Romantic'),
                onPressed: () {
                  changeMyMood("romantic");
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
