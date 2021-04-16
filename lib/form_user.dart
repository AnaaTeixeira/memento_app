import 'package:flutter/material.dart';

class FormUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormUserState();
  }
}

class FormUserState extends State<FormUser> {
  String _name;
  String _lastName;
  String _url;
  String _phoneNumber;
  String _caretaker;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nome'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }


Widget _buildLastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Apelido'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'LastName is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _lastName = value;
      },
    );
  }



  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Contacto'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }


 Widget _buildCaretaker() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Cuidador(a)'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Caretaker is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _caretaker = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editar Perfil")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildLastName(),
                _buildPhoneNumber(),
                _buildCaretaker(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_lastName);
                    print(_phoneNumber);
                    //print(_url);
                    print(_caretaker);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}