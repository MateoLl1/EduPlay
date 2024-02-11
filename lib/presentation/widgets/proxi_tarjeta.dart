import 'package:flutter/material.dart';

class ProxiTarjeta extends StatelessWidget {
  const ProxiTarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [


            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/img/proximamente.jpg',
                width: size.width,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),


            Positioned(
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
