
import 'package:flutter/material.dart';
import 'package:games/domain/domain.dart';
import 'package:go_router/go_router.dart';

class SoftwareScreen extends StatelessWidget {
  const SoftwareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Software'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: (){}, 
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            ...appSoftwareItem.map(
              (e) => ListTile(
                title: Text(e.name),
                leading: CircleAvatar(child: Icon(e.icon),),
                onTap: () => context.push('/software/curso/${e.id}'),
              )
            ),

            const  SizedBox(height: 50,)
        
          ],
        ),
      ),
    );
  }
}