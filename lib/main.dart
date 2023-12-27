import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/buoi_3/row_colum.dart' as a;
import 'package:flutter_course_23/modules/buoi_3/stack_demo.dart';
import 'package:flutter_course_23/modules/buoi_3/wrap.dart';
import 'package:flutter_course_23/modules/lession_5/demo_1.dart';
import 'package:flutter_course_23/modules/lesson_4/button_demo.dart';
import 'package:flutter_course_23/modules/lesson_4/product_info_screen.dart';
import 'package:flutter_course_23/modules/lesson_4/rich_text_demo.dart';
import 'package:flutter_course_23/modules/lesson_4/text_demo.dart';

import 'modules/lesson_4/image_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Demo(),
    );
  }
}
