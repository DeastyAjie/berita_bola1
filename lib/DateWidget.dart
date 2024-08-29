import 'dart:async';

import 'package:flutter/material.dart';

class Datewidget extends StatefulWidget {
  const Datewidget({super.key});

  @override
  State<Datewidget> createState() => _DatewidgetState();
}

class _DatewidgetState extends State<Datewidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2006, 8),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${selectedDate.toLocal()}".split(" ")[0],
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
              print(selectedDate.day.toString() +
                  "/" +
                  selectedDate.month.toString() +
                  "/" +
                  selectedDate.year.toString());
            },
            child: Text('Pilih Tanggal'),
          ),
        ],
      ),
    );
  }
}