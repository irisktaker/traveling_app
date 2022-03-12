import 'package:flutter/material.dart';
import 'package:traveling_app/app_data.dart';
import 'package:traveling_app/widgets/trip_item.dart';

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
          return TripItem(
            title: filterTrips[i].title,
            imageUrl: filterTrips[i].imageUrl,
            duration: filterTrips[i].duration,
            tripType: filterTrips[i].tripType,
            season: filterTrips[i].season,
          );
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
