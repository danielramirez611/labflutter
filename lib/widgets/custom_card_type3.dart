import 'package:fl_cmpuno/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget{
  const CustomCardType3({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.8),
      elevation: 10,
      child: Column(
        children: [
          /*Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA7XmqKuk8gqsOPvBlnZ37cos0dpI18jCz8Q&s')
            ),*/
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: AssetImage('assets/dbmovie1.jpg'),
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
            ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Peliculas en Cartelera'),
          )  
        ]   
      ),
    );
  }
}