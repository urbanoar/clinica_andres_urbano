import 'package:flutter/material.dart';

class MyCard2 extends StatelessWidget {
  const MyCard2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Tratamiento 1'),
                subtitle: Text(
                    ' Doctor: Juan Perez \n Fecha: 23/03/2022 \n Hora: 09:00AM - 10:00AM'),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Tratamiento 2'),
                subtitle: Text(
                    ' Doctor: Juan Perez \n Fecha: 23/03/2022 \n Hora: 10:00AM - 11:00AM'),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Tratamiento 3'),
                subtitle: Text(
                    ' Doctor: Juan Perez \n Fecha: 23/03/2022 \n Hora: 14:00PM - 15:00PM'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
