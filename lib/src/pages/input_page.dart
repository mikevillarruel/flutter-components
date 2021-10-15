import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Inputs'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Characters: ${_name.length}'),
        hintText: 'Your name',
        labelText: 'Name',
        helperText: 'Only name',
        suffixIcon: const Icon(Icons.accessibility),
        icon: const Icon(Icons.account_circle),
      ),
      onChanged: (String value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name: $_name'),
    );
  }
}
