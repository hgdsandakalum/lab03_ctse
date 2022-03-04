import 'package:flutter/material.dart';
import 'package:my_store/components/item_tile.dart';
import 'package:my_store/data.dart';
import 'package:my_store/screens/shop.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Store"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: storeItems.length,
            itemBuilder: (context, index) {
              return ItemTile(item: storeItems.elementAt(index));
            }),
      ),
    );
  }
}
