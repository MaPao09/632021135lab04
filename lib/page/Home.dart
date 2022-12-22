import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();

  String _selectedRadioTile = "";
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Center(child: Text("TextFromFied #1")),
            TextFormField(
              controller: _text1,
              onChanged: (value) {
                setState(() {});
              },
            ),

            //----------------------------------------------------

            Center(child: Text("TextFromFied #2")),
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),

            //----------------------------------------------------
            Center(child: Text("TextFromFied #3")),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green, width: 2))),
              controller: _text3,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("\nshow input #1 : ${_text1.text}"),
            Text("show input #2 : ${_text2.text} "),
            Text("show input #3 : ${_text3.text} "),
            Center(child: Text("\nRadioListTile #1")),
            RadioListTile(
              value: "optino1",
              groupValue: _selectedRadioTile,
              title: Text('Option 1'),
              onChanged: (value) {
                setState(() {
                  _selectedRadioTile = value!;
                });
              },
            ),
            RadioListTile(
              value: "optino2",
              groupValue: _selectedRadioTile,
              title: Text('Option 2'),
              onChanged: (value) {
                setState(() {
                  _selectedRadioTile = value!;
                });
              },
            ),
            RadioListTile(
              value: "optino3",
              groupValue: _selectedRadioTile,
              title: Text('Option 3'),
              onChanged: (value) {
                setState(() {
                  _selectedRadioTile = value!;
                });
              },
            ),

            Text("\nshow input #1 : ${_selectedRadioTile}"),

            Center(child: Text("\nCheckBoxListTile #1")),
            CheckboxListTile(
              title: const Text('Apple'),
              value: isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Banana'),
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Orage'),
              value: isChecked3,
              onChanged: (bool? value) {
                setState(() {
                  isChecked3 = value!;
                });
              },
            ),
            Text("\nshow input #1 : ${isChecked1}"),
            Text("show input #2 : ${isChecked2}"),
            Text("show input #3 : ${isChecked3}"),
          ],
        ),
      ),
    );
  }
}
