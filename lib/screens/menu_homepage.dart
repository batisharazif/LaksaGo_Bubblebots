import 'package:flutter/material.dart';
import 'package:laksago/screens/my_orders_page.dart';

class MenuHomepage extends StatelessWidget {
  const MenuHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LaksaGo Menu'),
      ),
      body: const Center(
        child: Text('Menu items will be displayed here'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyOrdersPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

