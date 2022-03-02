import 'package:flutter/material.dart';

class Datos extends StatefulWidget {
  @override
  _DatosState createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Datos Personales'),
      ),
      body: datos(),
    );
  }
  
  Widget datos() {
  return ListView(
    children: [
      ListTile(
        title: Text(
            ' Nombres: Edison Andres \n Apellidos: Urbano \n Codigo:217036080 \n Dirección: Floresta Ipiales \n Telefono: 3206457655 \n Correo: edisonandres1000@hotmail.com'),
      ),
    ],
  );
}
}


