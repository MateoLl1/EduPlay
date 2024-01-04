

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SliderContent {
  final String title;
  final String caption;
  final String imageUrl;

  SliderContent({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });
}

final listSlider = <SliderContent>[
  SliderContent(
    title: '¡Bienvenido a EducaPlay!',
    caption: 'Explora el emocionante mundo de la educación en desarrollo de software.',
    imageUrl: 'assets/img/1.jpg',
  ),
  SliderContent(
    title: 'Aprende a tu propio ritmo',
    caption: 'Accede a recursos educativos de calidad y mejora tus habilidades a tu propio ritmo.',
    imageUrl: 'assets/img/2.jpg', 
  ),
  SliderContent(
    title: 'Colabora y Conecta',
    caption: 'Únete a comunidades, participa en proyectos y colabora con otros estudiantes de desarrollo.',
    imageUrl: 'assets/img/3.jpg', 
  ),
];

class TutorialApp extends StatefulWidget {
  const TutorialApp({super.key});

  @override
  State<TutorialApp> createState() => _TutorialAppState();
}

class _TutorialAppState extends State<TutorialApp> {
  final PageController pageController = PageController();
  bool visible = false;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() { 
      final page = pageController.page ?? 0;
      if (page >= 1.8) {
        visible = true;
        setState(() {});
      }
    });
    
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PageView(
            controller: pageController,
            children: [

              ...listSlider.map(
                (e) => _Slider(e.title, e.caption, e.imageUrl)
              ).toList()

            ],
          ),

          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            ),
          ),

          visible ? Positioned(
            bottom: 40,
            right: 20,
            child: FadeInRight(
              duration: const Duration(seconds: 1),
              from: 30,
              child: FilledButton(
                child: const Text('Comenzar'),
                onPressed: () => context.pop(), 
              ),
            )
          ): const SizedBox()


        ],
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slider(
    this.title, 
    this.caption, 
    this.imageUrl
  );

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage(imageUrl))
            ),
            const SizedBox(height: 30,),
            Text(title,style: textStyle.titleMedium,),
            const SizedBox(height: 10,),
            Text(caption,style: textStyle.bodyMedium,)

            
          ],
        ),
      ),
    );
  }
}