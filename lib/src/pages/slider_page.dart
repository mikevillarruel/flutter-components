import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0;
  bool _lockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      min: 0.0,
      max: 400.0,
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      // divisions: 10,
      onChanged: (_lockCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createImage() {
    return Image(
      width: _sliderValue,
      fit: BoxFit.contain,
      image: const NetworkImage(
          'https://static.wikia.nocookie.net/paladins_gamepedia/images/f/f1/Maeve_Cammie.png/revision/latest/scale-to-width-down/1000?cb=20210626201940'),
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //   value: _lockCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       if (value != null) {
    //         _lockCheck = value;
    //       }
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: const Text('Lock slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          if (value != null) {
            _lockCheck = value;
          }
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: const Text('Lock slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    );
  }
}
