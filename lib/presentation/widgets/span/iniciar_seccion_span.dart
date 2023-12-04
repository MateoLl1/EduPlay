import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class IniciarSeccionSpan extends StatelessWidget {
  const IniciarSeccionSpan({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset(
        'assets/img/login-span.png',
        width: 300,
        fit: BoxFit.cover,
      ),
    
      Text('¡Listo para empezar a aprender!',style: textStyle.titleMedium),
    
      Text('Inicia session o registrate para guardar tu progreso mientras trabajas en los cursos de EducaPlay',
        style: textStyle.bodyMedium,
        textAlign: TextAlign.center,
      ),
      
      const SizedBox(height: 10),
      
      OutlinedButton(
        child: const Text('Iniciar Session'),
        onPressed: (){
          context.push('/perfil');
        }, 
      ),

      ]
    );
  }
}