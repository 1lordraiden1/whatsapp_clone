import 'package:flutter/material.dart';
import 'package:whatsapp_clone/modules/home_screen/home_screen.dart';

import 'components/screen_components/screen_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        //primarySwatch: Colors.blueGrey,
        primaryColor: nrml,
        //accentColor: ,
        appBarTheme: AppBarTheme(
          color: nrml,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0)
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: home_screen(),
    );
  }
}

