import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  ListViewDemo({super.key});

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            final height = index * 10;
            return Container(
              color: Colors.yellowAccent,
              height: height.toDouble(),
              child: Text(index.toString()),
            );
          },
          itemBuilder: (context, index) {
            final studentName = studentNames[index];
            return StudentItem(studentName: studentName);
          },
          itemCount: studentNames.length,
          padding: const EdgeInsets.all(16),
        ),
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

class StudentItem extends StatelessWidget {
  const StudentItem({
    super.key,
    required this.studentName,
  });

  final String studentName;

  @override
  Widget build(BuildContext context) {
    print('==== build StudentItem $studentName ====');
    return Container(
      color: Colors.green,
      height: 120,
      child: Center(child: Text(studentName)),
    );
  }
}
