import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  //Routing
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('mealName'),
      ),
      body: Center(
        child: Text('Hello to mealScreen $mealId'),
      ),
    );
  }
}
