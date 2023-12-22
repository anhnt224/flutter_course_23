import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 16,
      runSpacing: 16,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
        BoxA(),
      ],
    );
  }
}

class BoxA extends StatelessWidget {
  const BoxA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: Colors.red);
  }
}

class BoxB extends StatelessWidget {
  const BoxB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      color: Colors.green,
    );
  }
}

class BoxC extends StatelessWidget {
  const BoxC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      color: Colors.yellow,
    );
  }
}
