
class CursoItem {
  final String image;
  final String title;
  final String url;
  final double porcent;

  const CursoItem({
    required this.image, 
    required this.title, 
    required this.url, 
    this.porcent = 0.5
  }):assert((porcent >= 0 && porcent <= 1), 'Porcentaje ingresado no esta dentro de los rangos [0 - 1]');

}

const appCursosItems = <CursoItem>[

  CursoItem(
    image: 'assets/img/software.jpg', 
    title: 'Desarrollo de software', 
    url: '/software',
  ),
  CursoItem(
    image: 'assets/img/comercio-exterior.jpg', 
    title: 'Comercio exterior', 
    url: '/comercio-exterior',
    porcent: 0.1
  ),
  

];