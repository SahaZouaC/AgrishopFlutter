import 'package:flutter/material.dart';

class AgriTypeTile extends StatelessWidget {
  final String agriName;
  final String agriPrice;
  final String imagePath;
  final MaterialColor color;
  void Function()? onPressed;

  AgriTypeTile({
    Key? key,
    required this.agriName,
    required this.agriPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 128,
              width: 158,
              
              fit: BoxFit.cover,

            ),

            // agri name
            Text(agriName),

            // Tool price + button
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                'CFA' + agriPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}