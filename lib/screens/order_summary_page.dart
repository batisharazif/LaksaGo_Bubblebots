import 'package:flutter/material.dart';
import 'package:laksago/constant/theme.dart';
import 'package:laksago/widgets/cancel_order_dialog.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order ID',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '#LS093',
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.textSecondary,
                ),
              ),
              const SizedBox(height: 20),
              const _OrderItem(
                title: 'Laksa Sotong',
                price: 'RM6.50',
                customizations: [
                  {'Regular': 'RM0.00'},
                  {'No Bean Sprouts': 'RM0.00'},
                  {'No Coriander': 'RM0.00'},
                  {'More Lime': 'RM1.00'},
                  {'Regular Broth': 'RM0.00'},
                ],
              ),
              const Divider(height: 32),
              const _OrderDetail(
                label: 'Takeaway Fee',
                value: 'RM0.50',
              ),
              const SizedBox(height: 8),
              const _OrderDetail(
                label: 'Total:',
                value: 'RM8.00',
                isBold: true,
              ),
              const SizedBox(height: 8),
              const _OrderDetail(
                label: 'Estimated time:',
                value: '15 - 30mins',
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => CancelOrderDialogs.showCancelOrderDialog(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(double.infinity, 45),
                  ),
                  child: const Text('Cancel Order'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderItem extends StatelessWidget {
  final String title;
  final String price;
  final List<Map<String, String>> customizations;

  const _OrderItem({
    required this.title,
    required this.price,
    required this.customizations,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...customizations.map((customization) {
          final entry = customization.entries.first;
          return Padding(
            padding: const EdgeInsets.only(left: 16, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  entry.key,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                Text(
                  entry.value,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}

class _OrderDetail extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _OrderDetail({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

