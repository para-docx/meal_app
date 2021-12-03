import 'package:flutter/material.dart';

import '../screens/catergory_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  //Variables
  final String id;
  final String title;
  final Color color;

  //Constructor
  CategoryItem(this.id, this.title, this.color);

  //Functions
  void selectCategory(BuildContext ctx) {
    //Navigation
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName, arguments: {'id': id, 'title': title},
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(id, title);
      //   },
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
