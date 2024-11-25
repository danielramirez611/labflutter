import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget{
  const CustomCardType2({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Título de la tarjeta'),
            subtitle: Text(
              'Esta es una descripción de la tarjeta'
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: const Text('Cancelar')),
              TextButton(onPressed: (){}, child: const Text('OK'))
            ],
          )
        ],
      ),
    );
  }
}