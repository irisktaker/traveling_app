import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  CategoryItem(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.40),
          ),
        ),
      ],
    );
  }
}
