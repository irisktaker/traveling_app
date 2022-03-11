import 'package:flutter/material.dart';
import 'package:traveling_app/app_data.dart';

class CategoriesTripsScreen extends StatelessWidget {
  static const screenRoute = '/category-trips';
  // String categoryID;
  // String categoryTitle;

  // CategoriesTripsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryID = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filterTrips = trips_data.where((trip) {
      return trip.categories.contains(categoryID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Text(filterTrips[i].title);
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
