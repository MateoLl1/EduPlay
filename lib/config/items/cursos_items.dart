
import 'package:flutter/material.dart';

class CursoItem {
  final String image;
  final String title;
  final String caption;
  final String url;
  final double porcent;
  final Color color;

  const CursoItem({
    required this.image, 
    required this.title, 
    required this.caption, 
    required this.url, 
    required this.color, 
    this.porcent = 0.5
  }):assert((porcent >= 0 && porcent <= 1), 'Porcentaje ingresado no esta dentro de los rangos [0 - 1]');

}

const appCursosItems = <CursoItem>[

  CursoItem(
    image: 'assets/img/software.jpg', 
    title: 'Desarrollo de software', 
    caption: 'Carrera del futuro con una amplia margen profesional', 
    url: '/software',
    color: Colors.blue
  ),
  

];