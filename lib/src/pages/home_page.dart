import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

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
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data) {

    final List<Widget> options = [];
    
    data?.forEach((item) {

      final widgetTemp = ListTile(
        leading: const Icon(Icons.account_circle, color: Colors.blue),
        title: Text(item["texto"]),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );

      options
        ..add(widgetTemp)
        ..add(const Divider());
      
    });

    return options;
  }
}
