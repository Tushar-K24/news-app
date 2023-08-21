import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Good Morning! User 👋",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Text(
              "Discover Breaking News",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
