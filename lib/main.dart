import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_5/grid_view_demo.dart';
import 'package:flutter_course_23/modules/lession_5/list_view_demo.dart';

import 'modules/lession_5/navigator.dart';
import 'modules/lession_5/navigator_named.dart';
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
      // routes: {
      //   '/page1': (context) => const Page1(),
      //   '/page2': (context) => const Page2(),
      //   '/page3': (context) => const Page3(),
      //   '/': (context) => const Page4(),
      //   '/page5': (context) => const Page5(),
      //   '/page6': (context) => const Page6(),
      // },
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => GridViewDemo(),
            );
          case '/page5':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => Page5(
                argument: settings.arguments.toString(),
              ),
            );
          case '/page6':
            return MaterialPageRoute(builder: (context) => const Page6());
          default:
        }
        return null;
      },
    );
  }
}
