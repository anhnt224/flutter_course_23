import 'package:flutter/material.dart';

class ProductList2Screen extends StatefulWidget {
  const ProductList2Screen({super.key});

  @override
  State<ProductList2Screen> createState() => _ProductList2ScreenState();
}

class _ProductList2ScreenState extends State<ProductList2Screen> {
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
  final cartNotifier = CartNotifier();

  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ValueListenableBuilder(
        valueListenable: cartNotifier,
        builder: (context, selectedProducts, child) => Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  indent: 12,
                  endIndent: 12,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  final isSelected = selectedProducts.contains(product);
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
                              cartNotifier.remove(product);
                            },
                          )
                        : IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              cartNotifier.addToCart(product);
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
                      selectedProducts.toString(),
                      style: textTheme.titleMedium,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        print(cartNotifier.hashCode);
                        Navigator.pushNamed(
                          context,
                          '/checkout',
                          arguments: cartNotifier,
                        );
                      },
                      child: const Text('Checkout')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartNotifier extends ValueNotifier<List<String>> {
  CartNotifier() : super([]);

  void addToCart(String product) {
    value = [...value, product];
  }

  void remove(String product) {
    value = value.where((element) => element != product).toList();
  }
}
