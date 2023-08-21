import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/906/906338.png"
                  ),
                ),
                SizedBox(width: 5,),
                Text(
                  "NewsFeed",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.notifications),
            onPressed: (){print("Alert was clicked");},
          ),
        ],
      ),
    );
  }
}
