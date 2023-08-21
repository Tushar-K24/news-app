import 'package:flutter/material.dart';
import 'package:news_app/Views/Widgets/BreakingNews/BreakingNewsWidget.dart';
import 'package:news_app/Views/Widgets/CategoryNews/CategoryNewsWidget.dart';

import 'Widgets/AppBarCustom.dart';
import 'Widgets/HeaderWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Column(children: [
            AppBarCustom(),
            HeaderWidget(),
            SizedBox(height: 10),
            BreakingNewsWidget(),
            SizedBox(height: 20),
            CategoryNewsWidget(),
          ])),
    );
  }
}
