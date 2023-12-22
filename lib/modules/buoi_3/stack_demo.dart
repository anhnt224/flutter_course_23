import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 400,
      height: 400,
      child: Stack(
        children: [
          BoxA(),
          BoxB(),
          Align(
            alignment: Alignment.center,
            child: BoxC(),
          ),
          BoxB(), //3
        ],
      ),
    );
  }

  SizedBox buildA() {
    return const SizedBox(
      width: 400,
      height: 400,
      child: IndexedStack(
        index: 3,
        children: [
          BoxA(),
          BoxB(),
          Align(
            alignment: Alignment.center,
            child: BoxC(),
          ),
          BoxB(), //3
        ],
      ),
    );
  }
}

class BoxA extends StatelessWidget {
  const BoxA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
    );
  }
}

class BoxB extends StatelessWidget {
  const BoxB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
  }
}

class BoxC extends StatelessWidget {
  const BoxC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
    );
  }
}
