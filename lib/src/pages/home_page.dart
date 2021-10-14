import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_string_util.dart';

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
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data, BuildContext context) {

    final List<Widget> options = [];
    
    data?.forEach((item) {

      final widgetTemp = ListTile(
        leading: getIcon(item['icon']),
        title: Text(item["texto"]),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, item['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context){
          //     return const AlertPage();
          //   }
          // );
          // Navigator.push(context, route);

        },
      );

      options
        ..add(widgetTemp)
        ..add(const Divider());
      
    });

    return options;
  }
}
