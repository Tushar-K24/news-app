import 'package:flutter/material.dart';

import 'BreakingNewsCard.dart';

var news = [{
    "author": "Lawrence Bonk",
    "title": "Venmo now lets you send crypto to other users for some reason",
    "source": "Engadget",
    "sourceUrl": "https://www.engadget.com/venmo-now-lets-you-send-crypto-to-other-users-for-some-reason-192015694.html",
    "imageUrl": "https://s.yimg.com/uu/api/res/1.2/LKRH31mzL9wqtcqoQ_lkjw--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-04/835a5670-e5f4-11ed-9db6-3febf57b7a4a.cf.jpg",
    "time": "2023-04-28",
  },
  {
    "author": "Lawrence Bonk",
    "title": "Venmo now lets you send crypto to other users for some reason",
    "source": "Engadget",
    "sourceUrl": "https://www.engadget.com/venmo-now-lets-you-send-crypto-to-other-users-for-some-reason-192015694.html",
    "imageUrl": "https://s.yimg.com/uu/api/res/1.2/LKRH31mzL9wqtcqoQ_lkjw--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-04/835a5670-e5f4-11ed-9db6-3febf57b7a4a.cf.jpg",
    "time": "2023-04-28",
  }
  ];
class BreakingNewsWidget extends StatelessWidget {
  const BreakingNewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Text(
                "Breaking News 🔥",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Text(
                "View All",
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 270,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 8),
            scrollDirection: Axis.horizontal,
            itemCount: news.length,
            itemBuilder: (BuildContext context, int index){
              return BreakingNewsCard(
                    author: news[index]["author"].toString(),
                    title: news[index]["title"].toString(),
                    source: news[index]["source"].toString(),
                    time: news[index]["time"].toString(),
                    imageUrl: news[index]["imageUrl"].toString(),
                    sourceUrl: news[index]["sourceUrl"].toString()
              );
            },
          ),
        )
      ],
    );
  }
}
