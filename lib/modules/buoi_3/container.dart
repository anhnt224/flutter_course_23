import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {
  const DemoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 150,
      height: 200,
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            border: Border.all(width: 3, color: Colors.blue)),
      ),
    );
  }
}
