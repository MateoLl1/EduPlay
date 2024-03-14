
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SoftwareScreen extends StatelessWidget {
  const SoftwareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
        
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(), 
                ),
                Text('Desarrollo de Software',style: textStyle.titleLarge,),
              ],
            ),

            ListTile(
              title: const Text('Introduccion a la programacion'),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(child: Icon(Icons.terminal)),
              onTap: () => context.push('/introduction-program'),
              horizontalTitleGap: 20,
            ),
            ListTile(
              title: const Text('Algoritmos y estrutura de datos'),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(child: Icon(Icons.folder_rounded)),
              horizontalTitleGap: 20,
              onTap: () => context.push('/algoritmos-datos'),
            ),
            ListTile(
              title: const Text('Desarrollo Web'),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(child: Icon(Icons.language)),
              horizontalTitleGap: 20,
              onTap: () => context.push('/desarrollo-web'),
            ),

        
          ],
        ),
      ),
    );
  }
}