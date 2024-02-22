import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Text(
            'Flutter course 12-23',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.amber,
                letterSpacing: 12,
                height: 1.25,
                wordSpacing: 30),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text('A')
      ],
    );
  }
}
