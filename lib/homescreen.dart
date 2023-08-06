import 'package:flutter/material.dart';
import './main.dart';
import './navbbar.dart';
import 'dart:math';

void main() {
  runApp(homescreen());
}

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> quotes = [
    "Be yourself; everyone else is already taken. - Oscar Wilde",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe. - Albert Einstein",
    "Be the change that you wish to see in the world. - Mahatma Gandhi",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "In three words I can sum up everything I've learned about life: it goes on. - Robert Frost",
    "Life is what happens when you're busy making other plans. - John Lennon",
  ];

  String currentQuote = "Tap the button to see a quote";

  void getNewQuote() {
    setState(() {
      currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: navbar(),
      appBar: AppBar(
        title: Text('Quotes App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: getNewQuote,
                child: Text('Get New Quote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

