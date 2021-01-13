import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  @override
  State<HomeContent> createState() {
    return new _ContentState();
  }
}

class _ContentState extends State<HomeContent> {
  var input = '';
  var _isEnabled = true;
  var _isChecked = false;
  var _switchValue = false;
  var _switchListTileValue = false;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(24),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$input',
            style: new TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textDirection: TextDirection.ltr,
          ),
          new TextField(
            textDirection: TextDirection.ltr,
            autofocus: true,
            autocorrect: true,
            enabled: _isEnabled,
            keyboardType: TextInputType.text,
            // obscureText: true,
            // obscuringCharacter: '#',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontStyle: FontStyle.italic),
            onChanged: (value) => _onTextFieldChanged(value),
            onSubmitted: (value) => _onTextFieldSubmitted(value),
          ),
          new Checkbox(
              value: _isChecked,
              activeColor: Colors.pink,
              checkColor: Colors.lightBlue,
              onChanged: _onCheckBoxChanged),
          new CheckboxListTile(
            value: _isEnabled,
            activeColor: Colors.pink,
            checkColor: Colors.lightBlue,
            onChanged: _controlTextField,
            title: new Text(
              'Enable User Input?',
              textDirection: TextDirection.ltr,
            ),
          ),
          new Switch(
              value: _switchValue,
              activeColor: Colors.purple,
              hoverColor: Colors.green,
              onChanged: _onSwitchChanged),
          new SwitchListTile(
              value: _switchListTileValue,
              activeColor: Colors.amber,
              inactiveThumbColor: Colors.green,
              inactiveTrackColor: Colors.cyanAccent,
              title: new Text(
                'Dark Theme',
                textDirection: TextDirection.ltr,
              ),
              onChanged: _onSwitchListTileChanged)
        ],
      ),
    );
  }

  void _onTextFieldChanged(String value) {
    setState(() {
      input = 'Temporary User name: $value';
    });
  }

  void _onTextFieldSubmitted(String value) {
    setState(() {
      input = 'Your user name: $value';
    });
  }

  void _onCheckBoxChanged(bool isChecked) {
    setState(() {
      _isChecked = isChecked;
      debugPrint('$isChecked');
    });
  }

  void _controlTextField(bool value) {
    setState(() {
      _isEnabled = value;
    });
  }

  void _onSwitchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  void _onSwitchListTileChanged(bool value) {
    setState(() {
      _switchListTileValue = value;
    });
  }
}
