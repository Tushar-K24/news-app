import 'package:flutter/material.dart';

class CategoryNewsButton extends StatelessWidget {
  final String category;
  const CategoryNewsButton({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.pink[50],
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
              category,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
