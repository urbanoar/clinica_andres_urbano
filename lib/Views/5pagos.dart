import 'package:flutter/material.dart';

void main() => runApp(Pagos());

class Pagos extends StatefulWidget {
  @override
  _PagosState createState() => _PagosState();
}

class _PagosState extends State<Pagos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Pagos'),
      ),
      body: precios(),
    );
  }

  Widget precios() {
    return ListView(
      children: [
        ListTile(
          title: Text(' Tratamiento 1 \n Fecha de Pago: 25/02/2022 \n  20000 '),
        ),
        Divider(),
        ListTile(
          title: Text(' Tratamiento 2 \n Fecha de Pago: 25/02/2022 \n 25000'),
        ),
        Divider(),
        ListTile(
          title: Text(' Tratamiento 3 \n Fecha de Pago: 25/02/2022 \n 30000 '),
        ),
      ],
    );
  }
}
