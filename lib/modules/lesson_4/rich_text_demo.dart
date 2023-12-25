import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
          text: "Flutter",
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        WidgetSpan(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 10),
            width: 40,
            color: Colors.red,
            height: 40,
            child: const Text(
              '---',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
        ),
        const TextSpan(
          text: " Course",
          style: TextStyle(
              color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const TextSpan(
          text: " 12/23",
          style: TextStyle(
              color: Colors.green, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
