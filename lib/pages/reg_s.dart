import 'package:flutter/material.dart';

class RegistrationScreenS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationScreenSState();
  }
}

class _RegistrationScreenSState extends State<RegistrationScreenS> {
  String _emailValue;
  String _passwordValue;
  String _gnValue;
  String _dnValue;
  String _fnValue;
  double _phoneValue;
  String _campusValue;
  double _yearValue;
  bool _acceptTerms = false;
  final _formkey = GlobalKey<FormState>();
  String dropdownValue = 'One';

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black38.withOpacity(0.3), BlendMode.dstATop),
        image: AssetImage('assets/regback.jpg'));
  }

  _buildFirstNTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'First Name', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.name,
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _fnValue = value;
        });
      },
    );
  }

  _buildFatherNTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Father\'s Name', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.name,
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _dnValue = value;
        });
      },
    );
  }

  _buildGrandFatherName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Grand-Father\'s Name',
          filled: true,
          fillColor: Colors.white),
      keyboardType: TextInputType.name,
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _gnValue = value;
        });
      },
    );
  }

  _buildGenderTextField() {
    String _genderval;
    List _gender = ['male', 'female'];

    return DropdownButton<String>(
      hint: Text('Gender'),
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      value: _genderval,
      isExpanded: true,
      style: TextStyle(color: Colors.black38),
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (value) {
        setState(() {
          _genderval = value;
        });
      },
      items: _gender.map((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'E-Mail', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _emailValue = value;
        });
      },
    );
  }

  _buildCampusTextField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          labelText: 'Campus', filled: true, fillColor: Colors.white),
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _campusValue = value;
        });
      },
    );
  }

  _buildPhoneTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: 'Phone Number', filled: true, fillColor: Colors.white),
      validator: (value) => value.isEmpty ? 'This Field is required' : null,
      onChanged: (String value) {
        setState(() {
          _phoneValue = double.parse(value);
        });
      },
    );
  }

  _buildYearTextField() {
    String _yearval;
    List _year = ['One', 'Two', 'three', 'Four', 'Five', 'six', 'seven'];
    return DropdownButton(
      hint: Text('select year'),
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      value: _yearval,
      isExpanded: true,
      style: TextStyle(color: Colors.black),
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (value) {
        setState(() {
          _yearval = value;
        });
      },
      items: _year.map((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _buildAcceptTerms() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  void _submitForm() {
    if (_formkey.currentState.validate()) {
      print(_emailValue);
      print(_fnValue);
      print(_dnValue);
      print(_gnValue);
      print(_campusValue);
      print(_yearValue);
      print(_phoneValue);
      Navigator.pushReplacementNamed(context, '/option');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Container(
          decoration: BoxDecoration(image: _buildBackgroundImage()),
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: ListView(
              children: <Widget>[
                _buildFirstNTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildFatherNTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildGrandFatherName(),
                SizedBox(
                  height: 10.0,
                ),
                _buildGenderTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildEmailTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildCampusTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildPhoneTextField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildYearTextField(),
                _buildAcceptTerms(),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  child: Text('Register'),
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ));
  }
}
