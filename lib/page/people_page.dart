import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('People'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
