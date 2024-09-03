import 'package:flutter/material.dart';
import 'package:flutter_application_3/datetime_widget.dart';
import 'package:flutter_application_3/scaffold_widget.dart';
// import 'package:flutter_application_3/container_widget.dart';
// import 'package:flutter_application_3/gridview_widget.dart';
// import 'package:flutter_application_3/dialog_widget.dart';
// import 'package:flutter_application_3/inputandselection_widget.dart';
// import 'package:flutter_application_3/scaffold_widget.dart';
// import 'package:flutter_application_3/button_widget.dart';
// import 'package:flutter_application_3/cupertino_widget.dart';
// import 'package:flutter_application_3/text_widget.dart';
// import 'package:flutter_application_3/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ScaffoldWidget(),
    );
  }
}

