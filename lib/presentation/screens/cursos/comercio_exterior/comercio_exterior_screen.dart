

import 'package:flutter/material.dart';

class ComercioExteriorScreen extends StatefulWidget {
  const ComercioExteriorScreen({super.key});

  @override
  State<ComercioExteriorScreen> createState() => _ComercioExteriorScreenState();
}
bool isFavoritece = false;
class _ComercioExteriorScreenState extends State<ComercioExteriorScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primaryContainer,
        title: Text('Comercio exterior',style: textStyle.titleLarge),
        actions: [
          IconButton(
            icon: (isFavoritece)
            ? const Icon(Icons.favorite,color: Colors.red,)
            : const Icon(Icons.favorite_outline,),
            onPressed: (){
              setState(() {
                isFavoritece = !isFavoritece;
              });
            }, 
          )
        ],  
      ),

    body: const Center(child: Text('No hice nada xq no ayudan cabro...'),),
    );
  }
}