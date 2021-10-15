import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            shape: MaterialStateProperty.all(const StadiumBorder()),
          ),
          child: const Text('Show Alert'),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: const Text('Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text(
                    'This is my content, please click on one of the buttons below'),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop()),
              TextButton(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
  }
}
