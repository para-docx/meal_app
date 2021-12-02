import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals'; //Routing name
  //Variables
  // final String categoryID;
  // final String categoryTitle;

  //Constructor
  // CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(categoryID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
