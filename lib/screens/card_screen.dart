import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType3(),
          CustomCardType4(imageURL: 'https://wallpapers.com/images/hd/dragon-ball-landscape-n9mj289tti8h0t53.jpg'),
          CustomCardType4(
            imageURL: 'https://steamuserimages-a.akamaihd.net/ugc/2513644999170433438/1698ACC197CA3E8E997BD1FD50AEF7CD01CEADC9/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false',
            descripcion: 'Goku y Vegeta nuevas aventuras',)    
        ],
      )
    );
  } 
} 
  