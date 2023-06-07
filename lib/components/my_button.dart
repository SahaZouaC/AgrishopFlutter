import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? ontap;
  final String text;

  const MyButton({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple,
          ),
        child: Center(
          child: Text(
          text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          ),
        
        ),),
      ),
    );
  }
}