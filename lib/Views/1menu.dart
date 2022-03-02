import 'package:flutter/material.dart';

import '2datos.dart';
import '3tratamientos.dart';
import '4citas.dart';
import '5pagos.dart';

class ListViewPage2 extends StatefulWidget {
  @override
  _ListViewPage2State createState() => _ListViewPage2State();
}

class _ListViewPage2State extends State<ListViewPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Clinica'),
      ),
      body: _milista(),
    );
  }

  Widget _milista() {
    return ListView(
      children: [
        ListTile(
            title: Text('Mis Datos Personales'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.account_circle),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Datos()));
            }),
        Divider(),
        ListTile(
            title: Text('Mis Tratamientos'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.add_to_queue),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tratamiento()));
            }),
        Divider(),
        ListTile(
            title: Text('Mis Citas y Agendamientos'),
            leading: Icon(Icons.access_time),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Citas()));
            }),
        Divider(),
        ListTile(
            title: Text('Mis Pagos'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.monetization_on),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pagos()));
            }),
      ],
    );
  }
}
