import 'package:flutter/material.dart';
import 'package:image_restoration/screens/home_page.dart';
import 'screens/upload_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Restoration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: HomePage.name,
      routes: {HomePage.name: (context) => const UploadPage()},
    );
  }
}
