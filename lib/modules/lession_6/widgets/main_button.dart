import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color(0xFFC67C4E),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
