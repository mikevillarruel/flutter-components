import 'dart:math';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<int> _numberList = [];
  int _lastItem = 0;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _addTen();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _addTen();
      }
    });
  }

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
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final int image = _numberList[index];
        return FadeInImage(
          height: 300,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 200),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300?image=$image'),
        );
      },
    );
  }

  void _addTen() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }
    setState(() {});
  }
}
