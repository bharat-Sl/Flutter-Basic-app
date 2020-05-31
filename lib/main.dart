import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: Home()),
    );

class Character {
  String name;
  String quotes;
  String image;
  Character({this.name, this.quotes, this.image});
}

//Defining different characters
Character Luffy = new Character(
    name: '-Monkey D. Luffy',
    image: 'images/Luffy.png',
    quotes:
        '“Power isn’t determined by your size, but the size of your heart and dreams!”');
Character Zoro = new Character(
    name: '-Roronoa Zoro',
    image: 'images/Zoro.png',
    quotes:
        '“When I decided to follow my dream, I had already discarded my life.” ');
Character Usopp = new Character(
    name: '-God Usopp',
    image: 'images/Usopp.png',
    quotes:
        '“There comes a time when a man has to stand and fight. That time is when his friends or dreams are laughed at.”');
Character Sanji = new Character(
    name: '-Vinsmoke Sanji',
    image: 'images/Sanji.png',
    quotes:
        '"Men who can\'t wipe away the tears from a women\'s eyes, aren\'t real men."');
Character Nami = new Character(
    name: '-Nami',
    image: 'images/Nami.png',
    quotes:
        '"Life is like a pencil that will surely run out, but will leave the beautiful writing of life.”');
Character Chopper = new Character(
    name: '-Tony Tony Chopper',
    image: 'images/Chopper.png',
    quotes: '"There is no disease in this world that can\'t be cured."');
Character NicoRobin = new Character(
    name: '-Nico Robin',
    image: 'images/Robin.png',
    quotes: '"Fools who don’t respect the past are likely to repeat it."');
Character Franky = new Character(
    name: '-Franky',
    image: 'images/Franky.png',
    quotes: '"It is never a crime to exist!."');
Character Brook = new Character(
    name: '-SK Brook',
    image: 'images/Brook.png',
    quotes: '“Death is never an apology.” ');
Character Jinbei = new Character(
    name: 'One Piece',
    image: 'images/Jinbei.png',
    quotes:
        '"You can\'t bring back what you have lost, think about what you have now."');
var onePiece = {
  1: Luffy,
  2: Zoro,
  3: Sanji,
  4: Nami,
  5: Usopp,
  6: Chopper,
  7: NicoRobin,
  8: Franky,
  9: Brook,
  10: Jinbei
};

//Character design end
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int a = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Center(
          child: Text('One Piece'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                onePiece[a].image,
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height) / 2,
              ),
            ),
          ),
          Text(
            onePiece[a].quotes,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 15,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 40, 0),
              alignment: Alignment.topRight,
              child: Text(
                onePiece[a].name,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[800],
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          setState(() {
            if (a < 10) {
              a = a + 1;
            } else if (a == 10) {
              a = 1;
            }
          });
        },
      ),
    );
  }
}
