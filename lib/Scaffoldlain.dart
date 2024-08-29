import 'package:flutter/material.dart';
import 'package:widget_2/row_coloumn.dart';

class ScaffoldR extends StatelessWidget {
  const ScaffoldR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
      ),
      body: RowColumn(),
    );
  }
}