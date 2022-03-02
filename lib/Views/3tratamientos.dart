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
          title: Text(' Tratamiento 1 Fiebre \n 1 Acetaminofen cada 8 Horas '),
        ),
        Divider(),
        ListTile(
          title: Text('Tratamiento 2 Gripa \n 1 Dolex cada 12 Horas'),
        ),
        Divider(),
        ListTile(
          title:
              Text('Tratamiento 3 Dolor de Cabeza \n 1 Advil antes de dormir'),
        ),
      ],
    );
  }
}
