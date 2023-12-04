import 'package:flutter/material.dart';

class ProxiTarjeta extends StatelessWidget {
  const ProxiTarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Card(
        elevation: 10,
        child: Stack(
          children: [


            Image.asset(
              'assets/img/proximamente.jpg',
              height: size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.cover,
            ),


            Positioned(
              top: size.height * 0.12,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Pronto más cursos",
                  style: textStyle.labelMedium,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
