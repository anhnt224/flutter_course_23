import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_6/widgets/main_button.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Container(
              child: Image.asset('assets/images/image_started.png'),
            ),
            _buildBottomView()
          ],
        ),
      ),
    );
  }

  Widget _buildBottomView() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.all(44),
        color: Colors.black,
        child: const Column(children: [
          Text(
            'Coffee so good, your taste buds will love it.',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'The best grain, the finest roast, the powerful flavor.',
            style: TextStyle(color: Color(0xFFA9A9A9), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          MainButton(title: 'Get started')
        ]),
      ),
    );
  }
}
