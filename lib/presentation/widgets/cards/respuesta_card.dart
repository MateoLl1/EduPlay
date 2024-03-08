
import 'package:flutter/material.dart';

class RespuestaCard extends StatelessWidget {
  final String respuesta;
  final Color color;
  const RespuestaCard({super.key, required this.respuesta, required this.color});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      width: 100,
      height: 100,
      child: Center(child: Text(respuesta,style: textStyle.titleMedium,)),
    );
  }
}