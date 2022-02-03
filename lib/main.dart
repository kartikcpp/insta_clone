import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobilescreenLayout.dart';
import 'package:insta_clone/responsive/responsie_layout_screen.dart';
import 'package:insta_clone/responsive/webscreenLayout.dart';
import 'package:insta_clone/utils/colors.dart';

void main() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options:const FirebaseOptions(
      apiKey: "AIzaSyBMLkWIq2vv8q2UP5eHdQtoAytt4buFr3k",
      appId: "1:873789656167:web:e8ca67a202b1bdfa23d8c2",
      messagingSenderId: "873789656167",
      projectId: "instaclone-b6ca9",
      storageBucket: "instaclone-b6ca9.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta_Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
        mobileScreenlayout: MobileScreenLayout(),
        WebScreenlayout: WebScreenLayout(),
      ),
    );
  }
}
