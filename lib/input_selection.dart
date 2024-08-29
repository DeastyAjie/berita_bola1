import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget { //class -> lampu = convert state
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  TextEditingController nama = TextEditingController(); // var = nama
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
      children: [
        TextField( 
        controller: nama, //ngetik -> masuk ke controller, dsimpan di text editing, ditambpilkan di (nama.text)
        obscureText: false,
        onChanged: (a){
          setState(() { }); //menyimpan secara realtime
        }, //onchanged = update dibawah
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Input Nama'), //Text: "nama aku"
          ),
        ),
        Text(nama.text),
      ],
      )
    ); //pilihan ga muncul, pake control sspasi
  }
}

