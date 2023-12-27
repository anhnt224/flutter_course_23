import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page4"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page5', arguments: {"1": 2, "2": 3})
                .then((value) {
              print(value);
            });
          },
          child: const Text('Push to Page 5'),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key, required this.argument});

  final String argument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page5"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              argument,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page6');
              },
              child: const Text('Push to Page 6'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Pop back!'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page6"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pop back!'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == '/');
              },
              child: const Text('Pop util!'),
            ),
          ],
        ),
      ),
    );
  }
}
