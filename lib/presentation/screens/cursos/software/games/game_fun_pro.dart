

import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';


class GameFunPro extends StatefulWidget {
  const GameFunPro({super.key});

  @override
  State<GameFunPro> createState() => _GameFunProState();
}






class _GameFunProState extends State<GameFunPro> {
  double posX = 0;

  moverDerecha(){
    if (posX >= 0.9) return;
    posX = posX + 0.1;
    print(posX);
    setState(() {}); 
  }

  moverIzquierda(){
    if (posX <= -1) return;
    posX -= 0.1;
    print(posX);
    setState(() {}); 
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.deepOrange[100],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
          
                const _ItemPregunta(),
          
          
                Expanded(
                  child: Stack(
                    children: [
                      
                      const SizedBox(
                        width: double.infinity,
                        child:  Row(
                          children: [
                            RespuestaCard(respuesta: 'Java', color: Colors.amber),
                            Spacer(),
                            RespuestaCard(respuesta: 'Javascript', color: Colors.deepOrange),
                            Spacer(),
                            RespuestaCard(respuesta: 'Python', color: Colors.pinkAccent),
                          ],
                        ),
                      ),
                      
                  
                      
                      _Nave(posX: posX,)
                  
                  
                    ],
                  ),
                ),
          
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black54
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      IconButton.filled(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: moverIzquierda, 
                      ),
                      IconButton.filled(
                        icon: const Icon(Icons.local_fire_department),
                        onPressed: () {
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                title: (posX >= -0.20 && posX <= 0.20) 
                                ? const Text('Ganaste')
                                : const Text('No le atino pipipi')
                              );
                            },
                          );
                        }, 
                      ),
                      IconButton.filled(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: moverDerecha, 
                      ),
                    ],
                  ),
                ),
          
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Nave extends StatelessWidget {
  final double posX;
  const _Nave({required this.posX});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(posX, 1),
      child: const Icon(Icons.rocket,size:50,),
    );
  }
}

class _ItemPregunta extends StatelessWidget {
  const _ItemPregunta();


  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepOrange[400],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Pregunta:'),
          Text(
            'Cuales es el lenguaje mas utlizado?',
            style: textStyle.titleLarge,
          )
        ],
      ),
    );
  }
}