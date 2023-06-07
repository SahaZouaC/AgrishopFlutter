import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Consumer<CartModel>(
        builder: (context, cartModel, child) {
          List<List<dynamic>> filteredAgriItems = cartModel.agriItems
              .where((item) => item[4] == categoryName)
              .toList();
          return ListView.builder(
            itemCount: filteredAgriItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredAgriItems[index][0]),
                onTap: () {
                  // Navigate to item details page
                },
              );
            },
          );
        },
      ),
    );
  }
}