import 'package:facebook_ui/widget/feed.dart';
import 'package:facebook_ui/widget/story.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              padding: const EdgeInsets.only(
                  top: 50, right: 20, left: 20, bottom: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: "Im, Karam Shaat",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: ()  {},
                      icon: const Icon(FontAwesomeIcons.facebookMessenger),
                      color: Colors.blue,
                      iconSize: 28),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "Stories",
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                letterSpacing: 1.2),
                          ),
                          const Text("See Archive  >"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeStory(
                                storyImage: 'images/story-2.jpg',
                                userImage: 'images/1.jpg',
                                userName: 'Karam Shaat'),
                            makeStory(
                                storyImage: 'images/story-3.jpg',
                                userImage: 'images/2.jpg',
                                userName: 'Mohammed Ali'),
                            makeStory(
                                storyImage: 'images/story-4.jpg',
                                userImage: 'images/3.jpg',
                                userName: 'Averie Woodard'),
                            makeStory(
                                storyImage: 'images/story-5.jpg',
                                userImage: 'images/4.jpg',
                                userName: 'Azamat Zhanisov'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      makeFeed(
                          userName: 'Khaled Ahmed',
                          userImage: 'images/9.jpg',
                          feedTime: '1 hr ago',
                          feedText:
                              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                          feedImage: 'images/story-1.jpg'),
                      makeFeed(
                          userName: 'Salem Shehata',
                          userImage: 'images/8.jpg',
                          feedTime: '3 mins ago',
                          feedText:
                              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                          feedImage: ''),
                      makeFeed(
                          userName: 'Dena Mohammed',
                          userImage: 'images/7.jpg',
                          feedTime: '3 mins ago',
                          feedText:
                              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                          feedImage: 'images/6.jpg'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
