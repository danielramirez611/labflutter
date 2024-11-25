import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Korn','Slipknot','System of a Down','Limp Bizkit'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigoAccent,
        title: const Text(
          'ListView Parte 2',          
          ),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(options[index]),
            trailing: const Icon(
              Icons.flourescent_outlined,
              color: Color.fromARGB(100, 136, 143, 80),
              ),
            onTap: () {
              final opcion = options[index];
              print(opcion);
            },
          ),
        separatorBuilder:(context, index) => const Divider(),
        itemCount: options.length)
    );
  }
}