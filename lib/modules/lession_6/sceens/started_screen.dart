import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_6/widgets/main_button.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Image.asset('assets/images/image_started.png'),
            _buildBottomView(context)
          ],
        ),
      ),
    );
  }

  Widget _buildBottomView(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.all(44),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black12, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(children: [
          const Text(
            'Coffee so good, your taste buds will love it.',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'The best grain, the finest roast, the powerful flavor.',
            style: TextStyle(color: Color(0xFFA9A9A9), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          MainButton(
            title: 'Get started',
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          )
        ]),
      ),
    );
  }
}
