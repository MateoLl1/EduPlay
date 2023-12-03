import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/config/config.dart';
import 'package:games/presentation/providers/providers.dart';
import 'package:games/presentation/widgets/widgets.dart';



class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final isDarkProvider = ref.watch(darkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text('EducaPlay')),
        actions: [
          IconButton(
            icon: isDarkProvider
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode_outlined),
            onPressed: (){
              ref.read(darkThemeProvider.notifier).update((state) => !state);
            }, 
          )
        ],
      ),
      drawer: const MenuLateral(),
      body: const SingleChildScrollView(child: _HomeView()),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    
    return  const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          IniciarSeccionSpan(),

          SizedBox(height: 20),

          _CursosListView(),

        ],
      ),
    );
  }
}

class _CursosListView extends StatelessWidget {
  const _CursosListView();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return  Column(
      children: [

        Text('Nuestros cursos',style: textStyle.titleLarge),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),

        
        ...appCursosItems.map((curso)
           => CursoTarjeta(
            image: curso.image, title: curso.title, url: curso.url, porcent: curso.porcent
            ),
          )
        

      ],
    );
  }
}

