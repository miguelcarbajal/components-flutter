import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  InputsPage({Key key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {

  // Properties
  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';

  TextEditingController _datePickerController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson()
        ],
      ),
    );
  }

  Widget _createInput() {

    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        counter: Text('Letras: ${ _name.length }'),
        hintText: 'Su nombre, por favor',
        labelText: 'Nombres',
        helperText: 'Sólo su nombre',
        suffixIcon: Icon(Icons.adb),
        icon: Icon(Icons.account_circle),
        focusColor: Colors.indigo
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'Su e-mail, por favor',
        labelText: 'E-mail',
        suffixIcon: Icon(Icons.email),
        icon: Icon(Icons.alternate_email),
        // fillColor: Colors.yellow
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'Ingrese su contraseña',
        labelText: 'Password',
        suffixIcon: Icon(Icons.vpn_key),
        icon: Icon(Icons.lock),
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      controller: _datePickerController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2015), 
      lastDate: new DateTime(2025)
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _datePickerController.text = _date;
      });
    }
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre: $_name'),
      subtitle: Text('Email: $_email, password: $_password'),
    );
  }

}