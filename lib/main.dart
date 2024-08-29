import 'package:flutter/material.dart';
import 'ui_berita.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UiBerita(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:widget_2/Scaffold_widget.dart';
// import 'package:widget_2/Scaffoldlain.dart';
// import 'package:widget_2/dialog.dart';
// import 'package:widget_2/image_widget.dart';
// import 'package:widget_2/stack_position.dart';

// //row/baris nyamping
// //kolom bawah
// void main() {
//    runApp(const MyApp());
//  }

// class MyApp extends StatelessWidget {
//    const MyApp({super.key});

//  // This widget is the root of your application.
//   @override
//  Widget build(BuildContext context) {
//      return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//            theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//        useMaterial3: true,
//      ),
//      home: StackPosition(),
//      );
//   }
//  }
