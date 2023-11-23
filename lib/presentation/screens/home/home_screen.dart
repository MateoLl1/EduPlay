import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/presentation/providers/providers.dart';
import 'package:games/presentation/widgets/widgets.dart';



class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final isDarkProvider = ref.watch(darkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
    
          const SaludoView(),
    
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 180,
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Desarrollo de\nsoftware',
          
                    style: textStyle.titleLarge
                  ),
          
          
                  Image.asset(
                    'assets/img/software.png',
                    height: size.width*0.3,
                    fit: BoxFit.cover
                  ),
                ],
              ),
          
            ),
          ),
          
          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 180,
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Comercio  \nexterior',
          
                    style: textStyle.titleLarge
                  ),
          
          
                  Image.asset(
                    'assets/img/comercio.png',
                    height: size.width*0.3,
                    fit: BoxFit.cover
                  ),
                ],
              ),
          
            ),
          ),
          
          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 180,
              color: Colors.purpleAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Desarrollo de\nsoftware',
          
                    style: textStyle.titleLarge
                  ),
          
          
                  Image.asset(
                    'assets/img/software.png',
                    height: size.width*0.3,
                    fit: BoxFit.cover
                  ),
                ],
              ),
          
            ),
          ),
          
          const SizedBox(height: 20),


          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 180,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Desarrollo de\nsoftware',
          
                    style: textStyle.titleLarge
                  ),
          
          
                  Image.asset(
                    'assets/img/software.png',
                    height: size.width*0.3,
                    fit: BoxFit.cover
                  ),
                ],
              ),
          
            ),
          ),
          
          const SizedBox(height: 20),


          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 180,
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Desarrollo de\nsoftware',
          
                    style: textStyle.titleLarge
                  ),
          
          
                  Image.asset(
                    'assets/img/software.png',
                    height: size.width*0.3,
                    fit: BoxFit.cover
                  ),
                ],
              ),
          
            ),
          ),
          
          const SizedBox(height: 20),
    
    
    
          
    
    




    
        ],
      ),
    );
  }
}

class SaludoView extends StatelessWidget {
  const SaludoView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text('Hola, Mateo',style: textStyle.titleLarge,),

          const SizedBox(width: 20),

          IconButton.filledTonal(
            style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              )
            ),
            icon: const Icon(Icons.person,size: 30),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}


