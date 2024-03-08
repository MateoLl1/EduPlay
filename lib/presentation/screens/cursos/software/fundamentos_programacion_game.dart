

import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class FundamentosProgramacionScreen extends StatelessWidget {
  const FundamentosProgramacionScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.sports_esports),
        onPressed: () => context.push('/game-fun-pro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: size.height*.05,),
              Text(
                'Fundamentos de Programacion',
                style: textStyle.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
          
          
              Text(
                'La programación es el arte de dar instrucciones a una computadora para que realice tareas específicas.Desde los sitios web que visitas hasta las aplicaciones que utilizas en tu teléfono, la programación está en todas partes',
                style: textStyle.bodyLarge,
              ),
          
          
              Text(
                'Conceptos basicos',
                style: textStyle.titleMedium,
              ),
          
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                      Text(
                        '• Variables y Tipos de Datos: Las variables son contenedores para almacenar datos. Los tipos de datos incluyen números, texto y booleanos.',
                        style: textStyle.bodyLarge,
                      ),
                      Text(
                        '• Control de Flujo: Los bucles y condicionales te permiten controlar el flujo de ejecución de un programa.',
                        style: textStyle.bodyLarge,
                      ),
                      Text(
                        '• Funciones: Las funciones son bloques de código reutilizables que realizan una tarea específica.',
                        style: textStyle.bodyLarge,
                      ),
                  ],
                ),
              ),
          
              Text(
                'Lenguajes de programacion',
                style: textStyle.titleMedium,
              ),
          
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                      Text(
                        '• Existen muchos lenguajes de programación, como Python, Java y JavaScript, cada uno con sus propias características y usos.',
                        style: textStyle.bodyLarge,
                      ),
          
                      const SizedBox(height: 10,),
                      const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Wrap(
                          alignment: WrapAlignment.spaceAround,
                          children: [
                            IconImageWeb(image: 'https://agzertuche.github.io/SPFx-Learning-Path/assets/js-logo.png'),
                            IconImageWeb(image: 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWTBVhS_ttKT5Dgqad8ubSYR5jUVT4P9G4KLr2LWrbHENbS90e9kVhpzSpeKB8Iil0xu8Z3ZsVYj8cmeZQKSd42XHWQScAdFqpM3msj8kyziYHZdu-b03kgzICfnnYa09ju_qjpxElLg-JSezVXJWxgL5_bc3tRR5fhYfMMK1wHIsLTExPCiq5jFllyQ/w222-h248/A53510D3-EB3C-47A8-8B41-2689EC93B8A2.png'),
                            IconImageWeb(image: 'https://th.bing.com/th/id/R.f073c98660fc4290f4d3d8d8f7b1e046?rik=OD%2bWTboaSbpQEw&riu=http%3a%2f%2fwww.tuprogramacion.com%2fimages%2ftopics%2f00050%2fthumb.jpg&ehk=Ez8WK17X%2bokhipSKCqYZ8Oibv%2bOFO1ISLJ2H4mwHjCg%3d&risl=&pid=ImgRaw&r=0'),
                          ],
                        ),
                      ),
          
                      const SizedBox(height: 10,),
                  ],
                ),
              ),
          
              Text(
                'Glosario',
                style: textStyle.titleMedium,
              ),
          
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                      Text(
                        '• Variable: Un contenedor para almacenar datos',
                        style: textStyle.bodyLarge,
                      ),
                      Text(
                        '• Bucle: Una estructura de control que repite un bloque de código varias veces.',
                        style: textStyle.bodyLarge,
                      ),
                      Text(
                        '• Función: Un bloque de código reutilizable que realiza una tarea específica',
                        style: textStyle.bodyLarge,
                      ),
                  ],
                ),
              ),
          
              const SizedBox(height: 60,)
          
            ],
          ),
        ),
      ),
    );
  }
}