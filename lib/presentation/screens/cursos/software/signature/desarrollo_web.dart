import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class DesarrolloWebScreen extends StatelessWidget {
  const DesarrolloWebScreen({Key? key}) : super(key: key);

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
            CursoAppBar(title: 'Desarrollo Web'),

            CustomTitle(title: '¿Qué es el Desarrollo Web?'),
            MyParrafo(label: 'El desarrollo web es el proceso de crear sitios web o aplicaciones web que se ejecutan en un navegador web. Implica tanto el diseño visual del sitio o aplicación como la programación de la funcionalidad del mismo.'),

            CustomTitle(title: 'Tecnologías de Desarrollo Web'),
            MyParrafo(label: 'Hay varias tecnologías utilizadas en el desarrollo web, algunas de las cuales incluyen:'),
            MyParrafo(label: '- HTML (HyperText Markup Language): Se utiliza para definir la estructura de las páginas web.'),
            MyParrafo(label: '- CSS (Cascading Style Sheets): Se utiliza para aplicar estilos visuales a las páginas web, como el diseño, los colores y la disposición.'),
            MyParrafo(label: '- JavaScript: Se utiliza para agregar interactividad y dinamismo a las páginas web, como animaciones y validación de formularios.'),
            MyParrafo(label: '- Frameworks como React, Angular, Vue.js: Son conjuntos de herramientas y bibliotecas que facilitan el desarrollo de aplicaciones web complejas.'),
            MyParrafo(label: '- Backend technologies like Node.js, Django, Ruby on Rails: Son tecnologías utilizadas para construir la parte del servidor de las aplicaciones web, que maneja la lógica de negocio y la gestión de datos.'),

            CustomTitle(title: 'Desarrollo Frontend vs. Backend'),
            MyParrafo(label: 'En el desarrollo web, a menudo se distingue entre el frontend y el backend:'),
            MyParrafo(label: '- Frontend: se refiere a la parte del sitio o aplicación que los usuarios ven y con la que interactúan directamente. Incluye la estructura, el diseño y la funcionalidad que se ejecutan en el navegador.'),
            MyParrafo(label: '- Backend: se refiere a la parte del sitio o aplicación que los usuarios no ven directamente, pero que es esencial para su funcionamiento. Incluye la lógica de negocio, la gestión de bases de datos y la comunicación con el frontend.'),

            Divider(),
            MyParrafo(label: 'Por ejemplo, en un sitio web de comercio electrónico, el frontend mostraría los productos y permitiría a los usuarios agregar productos al carrito, mientras que el backend manejaría las transacciones de pago y la gestión de inventario.'),
            Divider(),

            CustomTitle(title: 'Herramientas de Desarrollo Web'),
            MyParrafo(label: 'Existen muchas herramientas utilizadas en el desarrollo web para facilitar el proceso de construcción y depuración de sitios y aplicaciones web. Algunas de estas herramientas incluyen:'),
            MyParrafo(label: '- Editores de código como Visual Studio Code, Sublime Text, Atom: Se utilizan para escribir y editar el código fuente de las aplicaciones web.'),
            MyParrafo(label: '- Frameworks y librerías como Bootstrap, Material-UI: Proporcionan componentes predefinidos y estilos para facilitar el diseño responsive y atractivo de las aplicaciones web.'),
            MyParrafo(label: '- Chrome DevTools: Son un conjunto de herramientas de desarrollo integradas en el navegador Google Chrome que permiten depurar, perfilar y analizar el rendimiento de las aplicaciones web en tiempo real.'),

            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
