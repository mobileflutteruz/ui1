import 'package:flutter/material.dart';
import 'package:ui_1/Widgets/appbar.dart';
import 'package:ui_1/Widgets/icon_page.dart';
import 'package:ui_1/Widgets/image.dart';

import 'package:ui_1/Widgets/my_stars.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        leading: const Icon(
          Icons.search,
          color: Colors.black,
          size: 25,
        ),
        actions: [
          circleName(
            iconImage: "assets/images/profile.png",
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: const Text(
                  "Beatiful quarantine home offices",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Cards(
                  "assets/images/1.jpg",
                  "Alie N Bree",
                  "assets/images/p1.jpg",
                  "Warm plant based decoration designer office"),
              Cards("assets/images/2.jpg", "Job B Lee", "assets/images/p2.jpg",
                  "Minimalist neutral home office"),
              Cards("assets/images/3.jpg", "Ali N.", "assets/images/p3.jpg",
                  "Dark and intimate novelist and actor office"),
              Cards(
                  "assets/images/4.webp",
                  "Bob J. Russel.",
                  "assets/images/p4.jpg",
                  "Simple outside view office from non-fiction author"),
            ],
          ),
        ),
      ),
    );
  }

  Padding Cards(
      String pictureMain, String name, String profile, String textMain) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.34,
              child: FadeInImage(
                placeholder: const AssetImage(
                  "assets/images/loading.gif",
                ),
                fit: BoxFit.cover,
                image: AssetImage("$pictureMain"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "22, June 2022",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "$textMain",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const MyStars(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("$profile"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "$name",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
