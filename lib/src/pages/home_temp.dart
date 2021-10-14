import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsFast(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = List<Widget>.empty(growable: true);
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list
        ..add(tempWidget)
        ..add(const Divider(
          thickness: 1.5,
          color: Colors.blue,
        ));
    }

    return list;
  }

  List<Widget> _createItemsFast() {
    
    return options.map((opt) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt + '!'),
            subtitle: const Text('Subtitle'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          const Divider(),
        ],
      );
      
    }).toList();
  }
}
