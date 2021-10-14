import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components')
      ),
      body: _list(),

    );

  }

  Widget _list() {
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return const [
      ListTile(title: Text('Hello world')),
      Divider(),
      ListTile(title: Text('Hello world')),
      Divider(),
      ListTile(title: Text('Hello world')),
    ];
  }
}
