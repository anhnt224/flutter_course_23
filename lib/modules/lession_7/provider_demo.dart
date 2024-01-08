import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatelessWidget {
  const ProviderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<CounterProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Demo')),
      body: Center(
        child: Column(
          children: [
            Text(
              context.watch<CounterProvider>().counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              context.watch<CounterProvider>().type,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(value.counter.toString());
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      provider.increment();
                    },
                    child: const Text('Tăng')),
                ElevatedButton(
                    onPressed: () {
                      provider.decrement();
                    },
                    child: const Text('Giảm'))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ChangeNotifier
class CounterProvider extends ChangeNotifier {
  int counter = 0;
  String type = "";

  void increment() {
    type = 'Tăng';
    counter++;
    notifyListeners();
  }

  void decrement() {
    type = 'Giảm';
    counter--;
    notifyListeners();
  }
}
