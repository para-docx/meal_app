import 'package:flutter/material.dart';

import 'category_items.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: dummyCategories
            .map((cData) => CategoryItem(cData.title, cData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}