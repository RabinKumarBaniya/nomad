import 'package:flutter/material.dart';
import 'package:ghumante/states/states1.dart';
import 'package:ghumante/states/states2.dart';
import 'package:ghumante/states/states3.dart';
import 'package:ghumante/states/states4.dart';
import 'package:ghumante/states/states5.dart';
import 'package:ghumante/states/states6.dart';
import 'package:ghumante/states/states7.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/nepal.jpg'), fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State1()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 1", style: TextStyle(fontSize: 17.0))
                    ],
                  ))),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State2()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 2", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State3()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 3", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State4()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 4", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State5()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 5", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State6()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 6", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const State7()));
                },
                splashColor: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text("state 7", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
