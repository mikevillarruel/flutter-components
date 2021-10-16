import 'dart:math';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _numberList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final int image = _numberList[index];
        return FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300?image=$image'),
        );
      },
    );
  }
}
