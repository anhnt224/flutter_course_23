import 'dart:math';

import 'package:flutter/material.dart';

class DemoKeyScreen extends StatefulWidget {
  const DemoKeyScreen({super.key});

  @override
  State<DemoKeyScreen> createState() => _DemoKeyScreenState();
}

class _DemoKeyScreenState extends State<DemoKeyScreen> {
  var listTile = <Widget>[Tile(), Tile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swap box'),
      ),
      body: Center(
        child: Row(children: listTile),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _swapListTile();
        },
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }

  void _swapListTile() {
    setState(() {
      listTile.insert(1, listTile.removeAt(0));
    });
  }
}

class Tile extends StatelessWidget {
  Tile({super.key});

  final color = generateRandomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

/// Generates a random color.
///
/// Returns a random color using the RGB color model.
Color generateRandomColor() {
  final Random random = Random();
  return Color.fromRGBO(
      random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
}
