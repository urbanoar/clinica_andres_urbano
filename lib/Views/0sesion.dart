import 'package:flutter/material.dart';

import '1menu.dart';

class Sesion extends StatefulWidget {
  @override
  _SesionState createState() => _SesionState();
}

class _SesionState extends State<Sesion> {
  final _user = TextEditingController();
  final _pass = TextEditingController();
  String usuario = '';
  String contra = '';

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinica Urbano',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inicio de Sesión'),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            _crearInput(),
            SizedBox(height: 10),
            _miboton(),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return Column(
      children: [
        TextField(
          controller: _user,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Digite su Nombre de Usuario',
            labelText: 'Usuario',
            helperText: 'Recuerde Digitar Solo su Usuario',
            suffixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _pass,
          obscureText: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Digite su Contraseña',
            labelText: 'Contraseña',
            helperText: 'Recuerde Digitar Solo su Contraseña',
            suffixIcon: Icon(Icons.vpn_key),
          ),
        ),
      ],
    );
  }

  Widget _miboton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        usuario = _user.text;
        contra = _pass.text;
        if (usuario == '217036080' && contra == '217036080') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ListViewPage2()));
        } else {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    content: Text('Usuario o Contraseña Incorrecta'));
              });
        }
      },
    );
  }
}
