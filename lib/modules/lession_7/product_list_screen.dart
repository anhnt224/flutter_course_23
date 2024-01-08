import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<String> products = [
    "iPhone 12",
    "iPhone 12 Pro",
    "iPhone 12 Pro Max",
    "Sam Sung Galaxy S21",
    "Sam Sung Galaxy S21 Ultra",
    "Oppo Reno 5",
    "Oppo Reno 5 Pro",
    "Xioami Redmi Note 10",
    "Xioami Redmi Note 10 Pro",
    "Xioami Redmi Note 10 Pro Max",
    "Xioami Redmi Note 10 Pro Max Ultra",
    "Huawei P40",
    "Huawei P40 Pro",
    "Huawei P40 Pro Max",
    "Huawei P40 Pro Max Ultra",
  ];
  late TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                indent: 12,
                endIndent: 12,
              ),
              itemBuilder: (context, index) {
                final cart = context.watch<CartProvider>().cart;
                final product = products[index];
                final isSelected = cart.contains(product);
                return ListTile(
                  title: Text(products[index]),
                  trailing: isSelected
                      ? IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            // Remove product from cart
                            final provider = context.read<CartProvider>();
                            provider.remove(products[index]);
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Add product to cart
                            final provider = context.read<CartProvider>();
                            provider.addToCart(products[index]);
                          },
                        ),
                );
              },
              itemCount: products.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.green,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    context.watch<CartProvider>().cart.toString(),
                    style: textTheme.titleMedium,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: const Text('Checkout')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Provider
class CartProvider extends ChangeNotifier {
  final List<String> _cart = [];

  List<String> get cart => _cart;

  void addToCart(String product) {
    if (_cart.contains(product)) {
      return;
    }
    _cart.add(product);
    notifyListeners();
  }

  void remove(String product) {
    _cart.remove(product);
    notifyListeners();
  }
}
