import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BoxA(),
          Spacer(
            flex: 1,
          ),
          BoxB(),
          SizedBox(
            width: 100,
          ),
          BoxC()
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
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}

class BoxB extends StatelessWidget {
  const BoxB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
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
      width: 50,
      height: 50,
      color: Colors.yellow,
    );
  }
}
