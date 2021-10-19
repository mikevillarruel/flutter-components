import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  static const pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.tiposde.com/wp-content/uploads/personajes-plano.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('MV'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.tiposde.com/wp-content/uploads/personajes-plano.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
