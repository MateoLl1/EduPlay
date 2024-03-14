

// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JuegoUno extends StatefulWidget {
  const JuegoUno({super.key});

  @override
  State<JuegoUno> createState() => _JuegoUnoState();
}



class _JuegoUnoState extends State<JuegoUno> {

 int contador = 0;
  
  mensajeError(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Respuesta incorrecta'),
          content: const Text('Tienes que seguir estudiando'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                context.pop();
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  respuestaCorrecta(){
    contador++;
    if(contador == 3){
      mensajeDeExito();
    }
    setState(() {});
  }

  mensajeDeExito(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Respuesta correcta'),
          content: const Text('Ahora puedes pasar al siguite nivel'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                context.pop();
                context.pop();
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.deepOrange,
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
        
            (contador==0) ? Center(
              child: Container(
                width: 350,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${contador + 1}.  Operador de asignacion',style: textStyle.titleLarge,),
                    const SizedBox(height: 10,),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 50,
                      children: [
                        _ButtonResponse(
                          response: '===',
                          color: Colors.amber,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: '=',
                          color: Colors.blue,
                          onPressed: respuestaCorrecta
                        ),
                        _ButtonResponse(
                          response: '++',
                          color: Colors.red,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: '??',
                          color: Colors.red,
                          onPressed: mensajeError
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ):const SizedBox(),

            (contador==1) ? Center(
              child: Container(
                width: 370,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('¿Qué tipo de estructura de control se utiliza para repetir un bloque de código mientras una condición sea verdadera?',style: textStyle.titleLarge,),
                    const SizedBox(height: 10,),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 50,
                      children: [
                        _ButtonResponse(
                          response: 'While()',
                          color: Colors.amber,
                          onPressed: respuestaCorrecta
                        ),
                        _ButtonResponse(
                          response: 'doWily()',
                          color: Colors.blue,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: 'if()',
                          color: Colors.red,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: 'cgl()',
                          color: Colors.red,
                          onPressed: mensajeError
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ):const SizedBox(),

            (contador==2) ? Center(
              child: Container(
                width: 350,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('¿Cuál de los siguientes es un tipo de datos comúnmente utilizado para almacenar números enteros en la mayoría de los lenguajes de programación?',style: textStyle.titleLarge,),
                    const SizedBox(height: 10,),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 50,
                      children: [
                        _ButtonResponse(
                          response: 'String',
                          color: Colors.amber,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: 'Float',
                          color: Colors.blue,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: 'Boolean',
                          color: Colors.red,
                          onPressed: mensajeError
                        ),
                        _ButtonResponse(
                          response: 'int',
                          color: Colors.red,
                          onPressed: respuestaCorrecta
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ):const SizedBox(),
            
        




          ],
        ),
      ),
    );
  }
}

class _ButtonResponse extends StatelessWidget {
  const _ButtonResponse({
    required this.color,
    required this.response, 
    this.onPressed,
  });
  final String response;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      child: Text(response,style: textStyle.titleLarge,),
    );
  }
}