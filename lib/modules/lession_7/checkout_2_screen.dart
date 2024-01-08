import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_7/product_list_2_screen.dart';

class Checkout2Screen extends StatefulWidget {
  const Checkout2Screen({super.key, required this.notifier});

  final CartNotifier notifier;

  @override
  State<Checkout2Screen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<Checkout2Screen> {
  @override
  void initState() {
    super.initState();

    print(widget.notifier.hashCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: ValueListenableBuilder(
        valueListenable: widget.notifier,
        builder: (context, selectedProducts, child) => ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(selectedProducts[index].toString()),
              trailing: IconButton(
                onPressed: () {
                  widget.notifier.remove(selectedProducts[index]);
                },
                icon: const Icon(
                  Icons.remove_circle,
                  color: Colors.red,
                ),
              ),
            );
          },
          itemCount: selectedProducts.length,
        ),
      ),
    );
  }
}
