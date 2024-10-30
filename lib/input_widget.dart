import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget ({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController Nama = TextEditingController();
  var Nama_lengkap='0';
  get_nama(){
    setState(() {
    Nama_lengkap = Nama.text;
    });
  }

  @override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(12),
    child: Column(
      children: [
          TextField(
          controller: Nama,
          obscureText: false,
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Input Nama"),
          ),
        ),
        ElevatedButton(
          onPressed:(){
            get_nama();
          },
         child: Text("Submit"),)
      ],
    ),
  );
}
}