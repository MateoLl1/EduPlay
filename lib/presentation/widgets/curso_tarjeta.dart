import 'package:flutter/material.dart';
import 'package:games/config/config.dart';
import 'package:go_router/go_router.dart';

class CursoTarjeta extends StatelessWidget {
  final CursoItem curso;
  const CursoTarjeta({
    super.key,
    required this.curso,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => context.push(curso.url),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        width: size.width,
        decoration: BoxDecoration(
          color: curso.color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Row(
              children: [
      
                SizedBox(
                  width: size.width*.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(curso.title,style: textStyle.titleMedium,),
                      Text(curso.caption,style: textStyle.bodyMedium,),
                    ],
                  ),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(curso.image),
                    fit: BoxFit.cover,
                    width: 150,
                    height: 120,
                  ),
                ),
      
              ],
            ),
          
      
            Column(
              children: [
                Text('${(curso.porcent* 100).round()} %'),
                LinearProgressIndicator(value: curso.porcent,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
