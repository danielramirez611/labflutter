import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget{
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jhennifer'),
        actions: [
          Container(
            child: CircleAvatar(
              child: Text('JG'),
            ),
          )
        ],
      ),
    body: const Center(
      child: CircleAvatar(
        maxRadius: 150,
        backgroundImage: NetworkImage('https://freesvg.org/img/pepa.png'),
      ),
    ),
    );
  }

}