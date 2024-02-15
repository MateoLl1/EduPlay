import 'package:flutter/material.dart';
import 'package:games/domain/domain.dart';

final appSoftwareItem = <SoftwareItem>[
  SoftwareItem(
      id: 0,
      name: 'Algoritmos y programación',
      image:'https://codelearn.es/wp-content/uploads/sites/4/2021/10/programacion-1080x675.jpg',
      icon: Icons.device_hub,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        ),
        SoftwareTema(
          id: 1, 
          title: 'Ciclos y blucles', 
          caption: 'For, while , do-while', 
          image: 'https://bpic.588ku.com/element_pic/19/03/18/4bb8a6ae7f2b90f649158a81742e5b6e.jpg!/fw/253/quality/90/unsharp/true/compress/true'
        ),

        SoftwareTema(
          id: 2, 
          title: 'Operadores logicos', 
          caption: ' > , < , = ', 
          image: 'https://th.bing.com/th/id/OIP.gbNgaNihlc09aVWO9UjZJwHaHa?rs=1&pid=ImgDetMain'
        ),
        SoftwareTema(
          id: 3, 
          title: 'Lenguajes de programacion', 
          caption: ' Lenguajes de bajo , y alto nivel ', 
          image: 'https://tecnoinver.cl/wp-content/uploads/2015/08/Prog-languages.png'
        ),
      ]
    ),
  SoftwareItem(
      id: 1, 
      name: 'Arquitectura TI', 
      image: 'https://th.bing.com/th/id/OIP.G49wW-KMwyF77PC_FKBDkQHaDt?rs=1&pid=ImgDetMain', 
      icon: Icons.construction,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Componentes de un computador', 
          caption: 'Funcionamiento de un CPU', 
          image: 'https://th.bing.com/th/id/OIP.i_tbjAF4FiSqYfPGIqcunAHaEr?rs=1&pid=ImgDetMain'
        ),
        SoftwareTema(
          id: 1, 
          title: 'Compuertas logicas', 
          caption: 'AND , OR , NOT', 
          image: 'https://th.bing.com/th/id/R.7dfd366dcca23f96d800a9308687038e?rik=VG80WJcKD8v0rg&riu=http%3a%2f%2f1.bp.blogspot.com%2f-95eYPO_4rFQ%2fVI_BY-ZwbDI%2fAAAAAAAAAGc%2fZLq3A-0ngfs%2fs1600%2f74ls04_1.png&ehk=BkSI9c6dwS1GnTpspo9w76gwCYuJUKURuD83iIYfypc%3d&risl=&pid=ImgRaw&r=0'
        ),
      ]
    ),
  SoftwareItem(
      id: 2, 
      name: 'Ingenieria de requerimientos', 
      image: '', 
      icon:Icons.sort,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
      ),
  SoftwareItem(
      id: 3,
      name: 'Matematica aplicada',
      image: '/algo',
      icon: Icons.functions,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 4,
      name: 'Programación orientada a objetos',
      image: '/algo',
      icon: Icons.terminal,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 5, 
      name: 'Base de datos I', 
      image: '/algo', 
      icon: Icons.folder,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 6, 
      name: 'Redes', 
      image: '/algo', 
      icon: Icons.wifi,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 7, 
      name: 'Electronica aplicada', 
      image: '/algo', 
      icon: Icons.power,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 8, 
      name: 'Programación web I', 
      image: '/algo', 
      icon: Icons.language,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 9,
      name: 'Analisis y diseño de software',
      image: '/algo',
      icon: Icons.security_update_good,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 10, 
      name: 'Base de datos II', 
      image: '/algo', 
      icon: Icons.table_rows,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 11, 
      name: 'Diseño UX', 
      image: '/algo', 
      icon: Icons.brush,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 12, 
      name: 'Programación movil', 
      image: '/algo', 
      icon: Icons.android,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 13,
      name: 'Aplicaciones distribuidas',
      image: '/algo',
      icon: Icons.apps,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 14,
      name: 'Gestion de infraestructura TI',
      image: '/algo',
      icon: Icons.fact_check,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
  SoftwareItem(
      id: 15, 
      name: 'Programación web II', 
      image: '/algo', 
      icon: Icons.public,
      temas: [
        SoftwareTema(
          id: 0, 
          title: 'Condicionales', 
          caption: 'Fundamentos de programacion', 
          image: 'https://th.bing.com/th/id/R.60e3c7f1428493b0bae33a47faf195d4?rik=o9aV2Z%2bnkulaxA&riu=http%3a%2f%2fblog.cambridge.es%2fwp-content%2fuploads%2f2018%2f10%2fcondicionales-ingles.jpg&ehk=YTGeEiCh2NP5%2bh0SdJBGoK7cU4mHsbDHec4GtvtzcCA%3d&risl=&pid=ImgRaw&r=0'
        )
      ]
    ),
];
