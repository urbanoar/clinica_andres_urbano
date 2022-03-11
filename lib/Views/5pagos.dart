import 'package:clinica_andres_urbano/cardViews/cardVies1.dart';
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
    return MyCard();
  }
}
