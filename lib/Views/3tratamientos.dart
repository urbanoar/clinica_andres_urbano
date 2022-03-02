import 'package:flutter/material.dart';

void main() => runApp(Tratamiento());

class Tratamiento extends StatefulWidget {
  @override
  _TratamientoState createState() => _TratamientoState();
}

class _TratamientoState extends State<Tratamiento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tratamientos'),
      ),
      body: tratamientos(),
    );
  }

  Widget tratamientos() {
    return ListView(
      children: [
        ListTile(
          title: Text(' Tratamiento 1 Ortodoncia \n  Fecha: 25/03/2021'),
        ),
        Divider(),
        ListTile(
          title:
              Text('Tratamiento 2 Blanqueamento Dental \n Fecha: 26/03/2021'),
        ),
        Divider(),
        ListTile(
          title: Text('Tratamiento 3 Endodoncia \n Fecha: 27/03/2021'),
        ),
      ],
    );
  }
}
