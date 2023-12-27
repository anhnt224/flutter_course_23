import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_5/list_view_demo.dart';

class GridViewDemo extends StatelessWidget {
  GridViewDemo({super.key});

  final List<String> studentNames = [
    'Nguyen Van A',
    'Nguyen Van B',
    'Nguyen Van C',
    'Nguyen Van D',
    'Nguyen Van E',
    'Nguyen Van F',
    'Nguyen Van G',
    'Nguyen Van H',
    'Nguyen Van I',
    'Nguyen Van J',
    'Nguyen Van K',
    'Nguyen Van L',
    'Nguyen Van M',
    'Nguyen Van N',
    'Nguyen Van O',
    'Nguyen Van P',
    'Nguyen Van Q',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 2,
                mainAxisExtent: 160,
              ),
              itemBuilder: (context, index) {
                final studentName = studentNames[index];
                return StudentItem(studentName: studentName);
              },
              itemCount: studentNames.length,
            ),
          ),
        ],
      ),
    );
    // body: SingleChildScrollView(
    //   child: Column(
    //       children:
    //           studentNames.map((e) => StudentItem(studentName: e)).toList()),
    //   ),
    // );
  }
}
