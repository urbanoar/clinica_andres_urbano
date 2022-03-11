import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      /*children: [
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
      ],*/

      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Tratamiento 1'),
                subtitle: Text(' Fecha de Pago: 25/02/2022 \n 25000 '),
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
                subtitle: Text(' Fecha de Pago: 25/02/2022 \n 30000 '),
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
                subtitle: Text(' Fecha de Pago: 25/02/2022 \n  20000 '),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
