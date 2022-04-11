import 'package:bottom_nav_bar_demo/screens/album_container_screen.dart';
import 'package:bottom_nav_bar_demo/screens/photo_container_screen.dart';
import 'package:bottom_nav_bar_demo/screens/video_container_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> viewContainer = [
    const PhotoContainerScreen(),
    const VideoContainerScreen(),
    const AlbumContainerScreen()
  ];

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: viewContainer[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: currentIndex,
          fixedColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              label: 'Photo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Video',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_library),
              label: 'Album',
            )
          ]),
    );
    // TODO: implement build
  }
}
