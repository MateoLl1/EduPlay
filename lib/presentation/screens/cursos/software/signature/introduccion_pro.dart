
import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';


class IntroduccionProScreen extends StatelessWidget {
  const IntroduccionProScreen({super.key});

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
            
            CursoAppBar(title: 'Introduccion a la programacion'),
            
        
            CustomTitle(title: '¿Que es la programacion?'),
            MyParrafo(label: 'La programación es el acto de programar, es decir, organizar una secuencia de pasos ordenados a seguir para hacer cierta cosa. Este término puede utilizarse en muchos contextos, es común hablar de programación a la hora de organizar una salida, las vacaciones o de la lista de programas con sus días y horarios de emisión de los canales de televisión o la lista de películas de un cine.'),
        
            CustomTitle(title: 'Programación en informática'),
            MyParrafo(label: 'En el ámbito de la informática, la programación refiere a la acción de crear programas o aplicaciones a través del desarrollo de un código fuente, que se basa en el conjunto de instrucciones que sigue el ordenador para ejecutar un programa.'),
        
            CustomTitle(title: 'Lenguaje de programación'),
            MyParrafo(label: 'El lenguaje de programación es un idioma artificial prediseñado formado por signos, palabras y símbolos que permite la comunicación entre el programador y el ordenador.Las instrucciones que sigue el ordenador para la ejecución de aplicaciones y programas están escritas en lenguaje de programación y luego son traducidas a un lenguaje de máquina que puede ser interpretado y ejecutado por el hardware del equipo (parte física).El código fuente está formado por líneas de texto que expresan en lenguaje de programación las instrucciones que debe llevar a cabo el ordenador. Este código es creado, diseñado, codificado, mantenido y depurado a través de la programación.Existen diferentes lenguajes de programación (Java, Pearl, Python) que se valen de diversos programas en los que se vuelcan las instrucciones. Estos lenguajes varían con el tiempo, se expanden y evolucionan.'),
            
            Divider(),
            MyParrafo(label: 'Por ejemplo la aplicacion que estas usando esta hecha en el lenguaje de programacion Dart.'),
            Center(child: FlutterLogo(size: 90,)),
            Divider(),
        
            CustomTitle(title: 'Tipos de programación'),
            MyParrafo(label: 'Programación estructurada. Busca mejorar y reducir el tiempo del proceso al utilizar subrutinas (subalgoritmos dentro del algoritmo principal que resuelve una tarea).'),
            MyParrafo(label: 'Programación modular. Divide los programas en módulos para trabajar con ellos y resolver los problemas de manera más simple.'),
            MyParrafo(label: 'Programación orientada a objetos. Utiliza objetos (entes con características, estado y comportamiento) como elementos fundamentales para la búsqueda de soluciones.'),
        
            SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}


