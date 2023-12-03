

import 'package:flutter/material.dart';


class SoftwareScreen extends StatefulWidget {
  const SoftwareScreen({super.key});

  @override
  State<SoftwareScreen> createState() => _SoftwareScreenState();
}
bool isFavoriteds = false;
class _SoftwareScreenState extends State<SoftwareScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primaryContainer,
        title: Text('Software',style: textStyle.titleLarge),
        actions: [
          IconButton(
            icon: (isFavoriteds)
            ? const Icon(Icons.favorite,color: Colors.red,)
            : const Icon(Icons.favorite_outline,),
            onPressed: (){
              setState(() {
                isFavoriteds = !isFavoriteds;
              });
            }, 
          )
        ],  
      ),

    body: const _SoftwareView(),
    );
  }
}

class _SoftwareView extends StatelessWidget {
  const _SoftwareView();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Text('Primer semestre',style: textStyle.titleMedium),
          const Divider(),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Programacion Basica',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Logica y algoritmos',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Arquitectura de computadores',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Matematica aplicada',style: textStyle.titleMedium,),
          ),
    
    
          const SizedBox(height: 10,),
          Text('Segundo semestre',style: textStyle.titleMedium),
          const Divider(),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Programacion Orientada a objetos',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Sistemas operativos',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Base de Datos',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Matematica aplicada',style: textStyle.titleMedium,),
          ),
    
    
          const SizedBox(height: 10,),
          Text('Tercer semestre',style: textStyle.titleMedium),
          const Divider(),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Programacion Web I',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Analisis y diseño de software',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Redes',style: textStyle.titleMedium,),
          ),
          ListTile(
            onTap: (){},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Estadistica',style: textStyle.titleMedium,),
          ),
    
        ],
      ),
    );
  }
}