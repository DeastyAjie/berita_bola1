import 'package:flutter/material.dart';
import 'package:widget_2/dialog.dart';
import 'package:widget_2/input_selection.dart';

class ScaffoldWidget2 extends StatelessWidget {
  const ScaffoldWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        DialogWidget(),InputSelection()
      ],),
    );
  }
}