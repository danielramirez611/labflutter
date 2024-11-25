import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget{
  const CustomCardType1({super.key});
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Título de la tarjeta'),
            subtitle: Text(
              'Esta es una descripción de la tarjeta'
              ),
          )
        ],
      ),
    );
  }
}