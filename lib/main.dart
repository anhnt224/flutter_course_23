// import 'package:flutter/material.dart';
// import 'package:flutter_course_23/modules/lession_5/grid_view_demo.dart';
// import 'package:flutter_course_23/modules/lession_5/list_view_demo.dart';
// import 'package:flutter_course_23/modules/lession_6/sceens/home_screen.dart';
// import 'package:flutter_course_23/modules/lession_6/sceens/started_screen.dart';
// import 'package:flutter_course_23/modules/lession_7/checkout_2_screen.dart';
// import 'package:flutter_course_23/modules/lession_7/checkout_screen.dart';
// import 'package:flutter_course_23/modules/lession_7/product_list_2_screen.dart';
// import 'package:flutter_course_23/modules/lession_7/product_list_screen.dart';
// import 'package:flutter_course_23/modules/lession_7/provider_demo.dart';
// import 'package:flutter_course_23/modules/lession_7/tile_state_less.dart';
// import 'package:provider/provider.dart';

// import 'modules/lession_5/navigator.dart';
// import 'modules/lession_5/navigator_named.dart';
// import 'modules/lession_4/image_demo.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       initialRoute: '/',
//       onGenerateRoute: (settings) {
//         switch (settings.name) {
//           case '/':
//             return MaterialPageRoute(
//                 settings: settings,
//                 builder: (context) => const ProductList2Screen());
//           case '/checkout':
//             final notifier = settings.arguments as CartNotifier;
//             return MaterialPageRoute(
//               builder: (context) => Checkout2Screen(
//                 notifier: notifier,
//               ),
//               settings: settings,
//             );

//           default:
//         }
//         return null;
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_23/modules/lession_8/bloc_demo/counter_bloc.dart';

// Cubit
class CounterCubit extends Cubit<int> {
  CounterCubit(int initialValue) : super(initialValue);

  void increment() {
    emit(state + 1);
  }

  void decrement() => emit(state - 1);
}

// Main
void main() {
  runApp(
    MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(CounterState(counter: 10)),
        child: const CounterPage(),
      ),
    ),
  );
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit'),
      ),
      body: Center(
        child: BlocListener<CounterBloc, CounterState>(
          listener: (context, state) {
            // show dialog || snackbar, ...
            print(state.counter);
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Counter: ${state.counter}'),
            //   ),
            // );

            // showDialog(
            //     context: context,
            //     builder: (context) =>
            //         AlertDialog(content: Text('Counter: ${state.counter}')));
          },
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              print('=== build');
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      bloc.add(DecrementEvent(value: 10));
                    },
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '${state.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () {
                      bloc.add(IncrementEvent(value: 10));
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
