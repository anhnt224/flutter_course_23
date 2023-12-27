import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('==rebuild Demo');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            BoxC(content: 'Counter $_counter'),
            ButtonLess(onTap: () {
              print('state changed');
              _counter++;
              setState(() {});
            }),
            const SizedBox(
              height: 16,
            ),
            const ButtonFull()
          ],
        ),
      ),
    );
  }
}

class BoxC extends StatelessWidget {
  const BoxC({super.key, required this.content});

  final String content;
  @override
  Widget build(BuildContext context) {
    print('===Rebuild BoxC===');
    return Container(
      child: Text(
        content,
        style: const TextStyle(
            color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// State less
class ButtonLess extends StatelessWidget {
  const ButtonLess({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text('Button 1'),
      ),
    );
  }
}

// State full
class ButtonFull extends StatefulWidget {
  const ButtonFull({super.key});

  @override
  State<ButtonFull> createState() => _ButtonFullState();
}

class _ButtonFullState extends State<ButtonFull> {
  // Trangj thai
  Color _bgColor = Colors.blue;
  String _title = "Button 1";

  @override
  Widget build(BuildContext context) {
    print('==== Rebuild ====');
    return GestureDetector(
      onTap: () {},
      onTapDown: (details) {
        print('== state changed');
        setState(() {
          _bgColor = Colors.red;
          _title = "onTapDown";
        });
        print(_bgColor);
      },
      onTapUp: (details) {
        print('state changed');
        _bgColor = Colors.blue;
        _title = "onTapUp";
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(_title),
      ),
    );
  }
}
