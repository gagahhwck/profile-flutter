import 'package:flutter/material.dart';
import 'package:sso_uiii/model/response_application.dart';

class GridAppWidgets extends StatelessWidget {
  final Datum datum;
  const GridAppWidgets({super.key, required this.datum});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              "images/uiii_only.png",
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
