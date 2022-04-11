import 'package:bottom_nav_bar_demo/constant/constant.dart';
import 'package:bottom_nav_bar_demo/screens/album_container_screen.dart';
import 'package:bottom_nav_bar_demo/screens/home_screen.dart';
import 'package:bottom_nav_bar_demo/screens/photo_container_screen.dart';
import 'package:bottom_nav_bar_demo/screens/splash_screen.dart';
import 'package:bottom_nav_bar_demo/screens/video_container_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    title: 'FluterBottomNavigationView',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        indicatorColor: Colors.black,
        highlightColor: Colors.black,
        bottomAppBarColor: Colors.black,
        primaryColor: const Color(0xFFffffff),
        primaryColorDark: const Color(0x00ffffff),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black)),
    home: const SplashScreen(),
    routes: <String, WidgetBuilder>{
      homeScreen: (BuildContext context) => const HomeScreen(),
      animatedSplash: (BuildContext context) => const SplashScreen(),
      photoContainerScreen: (BuildContext context) =>
          const PhotoContainerScreen(),
      videoContainerScreen: (BuildContext context) =>
          const VideoContainerScreen(),
      albumContainerScreen: (BuildContext context) =>
          const AlbumContainerScreen()
    },
  ));
}
