import 'package:flutter/material.dart';

class CategoryNewsCard extends StatelessWidget {
  final String author;
  final String title;
  final String category;
  final String time;
  final String imageUrl;
  final String sourceUrl;

  const CategoryNewsCard({
    Key? key,
    required this.author,
    required this.title,
    required this.category,
    required this.time,
    required this.imageUrl,
    required this.sourceUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: SizedBox(
        //   width: double.infinity,
          height: 150,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 120,
                    height: 120,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "${title.substring(0,50)}...",
                            // title,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            color: Colors.black,
                            child: Text(
                              category,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                SizedBox(width: 7,),
                                Text(
                                  time,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              author,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
