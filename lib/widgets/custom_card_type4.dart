import 'package:fl_cmpuno/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType4 extends StatelessWidget{

  final String imageURL;
  //final String localURL;
  final String? descripcion;

  const CustomCardType4(
    {
      super.key,
      required this.imageURL,
      this.descripcion
    });
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
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),
          if (descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(descripcion ?? 'sindato'),
          )  
        ]   
      ),
    );
  }
}