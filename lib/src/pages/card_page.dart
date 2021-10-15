import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://photographylife.com/wp-content/uploads/2020/03/Dan-Ballard-Landscapes-6.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Overview'),
          ),
        ],
      ),
    );
  }
}
