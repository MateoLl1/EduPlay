


import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class AlgoritmosEstScreen extends StatelessWidget {
  const AlgoritmosEstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () => context.push('/uno'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CursoAppBar(title: 'Estructura de Datos'),

            CustomTitle(title: '¿Qué son las Estructuras de Datos?'),
            MyParrafo(label: 'Las estructuras de datos son formas de organizar y almacenar datos en una computadora para que puedan ser utilizados de manera eficiente. Son fundamentales en la programación y se utilizan para representar y manipular datos de manera sistemática.'),

            CustomTitle(title: 'Tipos de Estructuras de Datos'),
            MyParrafo(label: 'Hay muchos tipos diferentes de estructuras de datos, cada una con sus propias ventajas y desventajas. Algunas de las estructuras de datos más comunes incluyen:'),
            MyParrafo(label: '- Listas'),
            MyParrafo(label: '- Pilas'),
            MyParrafo(label: '- Colas'),
            MyParrafo(label: '- Árboles'),
            MyParrafo(label: '- Grafos'),
            MyParrafo(label: '- Tablas hash'),

            CustomTitle(title: 'Uso de Estructuras de Datos'),
            MyParrafo(label: 'Las estructuras de datos se utilizan en una variedad de aplicaciones y algoritmos. Por ejemplo, las listas se utilizan comúnmente para almacenar y manipular colecciones de elementos, mientras que los árboles se utilizan para organizar datos jerárquicamente.'),

            Divider(),
            MyParrafo(label: 'Por ejemplo, una aplicación de gestión de contactos puede utilizar una lista para almacenar los nombres y números de teléfono de los contactos, mientras que un algoritmo de búsqueda de caminos puede utilizar un grafo para representar las conexiones entre diferentes ubicaciones en un mapa.'),
            Divider(),

            CustomTitle(title: 'Implementación de Estructuras de Datos'),
            MyParrafo(label: 'Las estructuras de datos pueden implementarse de muchas formas diferentes, dependiendo del lenguaje de programación y de los requisitos específicos de la aplicación. Algunas estructuras de datos se implementan utilizando arreglos, mientras que otras se implementan utilizando punteros o referencias.'),

            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
