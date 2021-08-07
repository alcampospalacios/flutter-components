import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentValue = 100.0;
  bool _disabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _currentValue,
        min: 100.0,
        max: 400.0,
        onChanged: (_disabled)
            ? null
            : (v) {
                setState(() {
                  _currentValue = v;
                });
              });
  }

  Widget _createImage() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      width: _currentValue,
      height: _currentValue,
      child: Image(
        image: NetworkImage(
            'https://i.pinimg.com/originals/2d/a5/31/2da531d1feacd07c1a33633153e114ea.jpg'),
      ),
    );
  }

  Widget _createCheckbox() {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text('Deshabilitar slider'),
    //     Checkbox(
    //         value: _disabled,
    //         onChanged: (v) {
    //           setState(() {
    //             _disabled = v!;
    //           });
    //         })
    //   ],
    // );

    return CheckboxListTile(
        title: Text('Deshabilitar slider'),
        value: _disabled,
        onChanged: (v) {
          setState(() {
            _disabled = v!;
          });
        });
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: Text('Deshabilitar slider'),
        value: _disabled,
        onChanged: (v) {
          setState(() {
            _disabled = v;
          });
        });
  }
}
