import 'package:flutter/material.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SafeArea(
          child: Column(
        children: [
          // Main body
          Expanded(
            child: _buildBody(),
          ),

          // Footer
          _buildFooter(),
        ],
      )),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 32),
              width: double.maxFinite,
              height: 200,
              child: Image.asset('assets/icons/house2.png'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'COSRX',
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              'Propolis Light Cream',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.5),
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.green, size: 16),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '4.8',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 4,
                ),
                Text('(217 Reviews)')
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text(
                  '32.00\$',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  '40.00\$',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                    decorationThickness: 2,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text('-20%'),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text(
                    '30ml',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text(
                    '100ml',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            _buildItem(
              'In Stock',
              Colors.green,
              Icons.card_giftcard_rounded,
            ),
            _buildItem(
              'Free delivery',
              Colors.grey,
              Icons.car_repair,
            ),
            _buildItem(
              'Available in the',
              Colors.grey,
              Icons.list,
            ),
            const Text(
                'An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.An exfoliating toner for targeting dullness, texture and signs of aging. Suited to all skin types.')
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String title, Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.grey.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(16)),
          child: const Icon(
            Icons.favorite_border_rounded,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.circular(16)),
            child: const Text(
              'Add to cart',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
        )
      ]),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: () {
            print('Tap');
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(right: 32),
            child: const Icon(Icons.card_travel_outlined),
          ),
        )
      ],
    );
  }
}
