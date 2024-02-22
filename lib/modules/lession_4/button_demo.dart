import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            print('click click');
          },
          child: const Text('Click here!'),
        ),
        GestureDetector(
          onDoubleTap: () {
            print('onDoubleTap');
          },
          onTap: () {
            print('ontap');
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(color: Colors.red),
          ),
        )
      ],
    );
  }
}
