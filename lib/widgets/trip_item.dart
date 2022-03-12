import 'package:flutter/material.dart';
import 'package:traveling_app/models/trips.dart';

class TripItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  TripItem({
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
  });

  // coz enum is not a text
  // and it's values saved as a numbers
  // so we need to get text values from enum
  String? get seasonText {
    // if (season == Season.winter) {
    //   return 'شتاء';
    // }
    // if (season == Season.spring) {
    //   return 'ربيع';
    // }
    // if (season == Season.summer) {
    //   return 'صيف';
    // }
    // if (season == Season.autumn) {
    //   return 'خريف';
    // }
    // return seasonText;

    switch (season) {
      case Season.winter:
        return 'شتاء';
      case Season.spring:
        return 'ربيع';
      case Season.summer:
        return 'صيف';
      case Season.autumn:
        return 'خريف';
      default:
        'غير معروف';
    }
  }

  String? get TripTypeText {
    switch (tripType) {
      case TripType.exploration:
        return 'استكشاف';
      case TripType.activities:
        return 'انشطة';
      case TripType.recovery:
        return 'نقاهة';
      case TripType.therapy:
        return 'معالجة';
      default:
        'غير معروف';
    }
  }

  void selectTrip() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectTrip,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: const [
                        0.6,
                        1.0,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    title,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '$duration أيام',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        seasonText!,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        TripTypeText!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
