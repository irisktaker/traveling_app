import 'package:flutter/material.dart';

class CategoriesTripsScreen extends StatelessWidget {
  static const screenRoute = '/category-trips'; 
  // String categoryID;
  // String categoryTitle;

  // CategoriesTripsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {

    final routeArgument = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryID = routeArgument['id'];
    final categoryTitle = routeArgument['title'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text("قائمة برحلات هذا التصنيف"),
      ),
    );
  }
}
