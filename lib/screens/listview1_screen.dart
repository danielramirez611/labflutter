import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Korn','Slipknot','System of a Down','Limp Bizkit'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: [          
         ...options.map((e) => ListTile(
            leading: const Icon(Icons.check),
            title: Text(e),
            trailing: const Icon(Icons.flourescent_outlined),
          ))
        ],
      )
    );
  }
}