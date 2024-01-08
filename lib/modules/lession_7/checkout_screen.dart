import 'package:flutter/material.dart';
import 'package:flutter_course_23/modules/lession_7/product_list_screen.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart[index].toString()),
            trailing: IconButton(
              onPressed: () {
                context.read<CartProvider>().remove(cart[index]);
              },
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.red,
              ),
            ),
          );
        },
        itemCount: cart.length,
      ),
    );
  }
}
