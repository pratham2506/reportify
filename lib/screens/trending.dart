//let's start by our home screen
import 'package:flutter/material.dart';
import 'package:reportify/components/news_list_tile.dart';
import 'package:reportify/models/news_model.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //let's start with the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Reportify",
          style: TextStyle(color: Colors.black),
        ),
      ),

      //Let's now work on the body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),

      //Now let's create the button navigation bar
      // bottomNavigationBar: Container(
      //   // let's make our button nav bar float
      //   margin: EdgeInsets.all(12),
      //   decoration: BoxDecoration(
      //     color: Colors.black,
      //     borderRadius: BorderRadius.circular(16),
      //   ),
      //   child: BottomNavigationBar(
      //     elevation: 0.0,
      //     selectedItemColor: Colors.orange.shade900,
      //     items: [
      //       BottomNavigationBarItem(
      //         backgroundColor: Colors.transparent,
      //         icon: Icon(Icons.home),
      //         label: "Home",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.bookmark),
      //         label: "Bookmark",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.rss_feed_rounded),
      //         label: "Feed",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: "Profile",
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
