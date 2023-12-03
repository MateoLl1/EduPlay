import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CursoTarjeta extends StatelessWidget {
  final String image;
  final String title;
  final String url;
  final double porcent;

  const CursoTarjeta({
    super.key,
    required this.image,
    required this.title,
    required this.url,
    required this.porcent
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: (){
        context.push(url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            margin: const EdgeInsets.only(bottom: 30),
            elevation: 7,
            child: Column(
              children: [
          
                
                Image.asset(
                  image,
                  height: 290,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
                
                
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    // alignment: (size.width>300)
                    // ? WrapAlignment.spaceBetween
                    // : WrapAlignment.center,
                    children: [
                      Text(title, style: textStyle.titleMedium),
                      const Spacer(),
                      Text('${(porcent*100).toInt()}%', style: textStyle.titleMedium),
                    ],
                  ),
                ),
          
          
                LinearProgressIndicator(value: porcent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
