import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/D-ANRH_Condor_A330-900neo_Beach.jpg/2560px-D-ANRH_Condor_A330-900neo_Beach.jpg',
            fit: BoxFit.cover,
            errorBuilder: (context, a, b) {
              return const Text('Lỗi rồi');
            },
          ),
        ),
        Container(
          width: 300,
          height: 300,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            'assets/icons/house2.png',
            fit: BoxFit.cover,
            errorBuilder: (context, a, b) {
              return const Text('Lỗi rồi');
            },
          ),
        ),
      ],
    );
  }
}
