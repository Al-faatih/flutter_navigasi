
import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [ 
    Item('Kris', 3000000, 'assets/kris1.jpg'),
    Item('Karambit ', 1500000, 'assets/karambit.jpg'),
    Item('Trisula', 2000000, 'assets/trisula.jpeg'),
    Item('Parang', 2000000, 'assets/parang.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
