
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SoftwareItem {
  final String name;
  final String path;
  final IconData icon;
  SoftwareItem({required this.name, required this.path, required this.icon});
}

final appSoftwareItem = <SoftwareItem> [
  SoftwareItem(name: 'Algoritmos y programación', path: '/algo', icon: Icons.device_hub),
  SoftwareItem(name: 'Arquitectura TI', path: '/algo', icon: Icons.construction),
  SoftwareItem(name: 'Ingenieria de requerimientos', path: '/algo', icon: Icons.sort),
  SoftwareItem(name: 'Matematica aplicada', path: '/algo', icon: Icons.functions),
  SoftwareItem(name: 'Programación orientada a objetos', path: '/algo', icon: Icons.terminal),
  SoftwareItem(name: 'Base de datos I', path: '/algo', icon: Icons.folder),
  SoftwareItem(name: 'Redes', path: '/algo', icon: Icons.wifi),
  SoftwareItem(name: 'Electronica aplicada', path: '/algo', icon: Icons.power),
  SoftwareItem(name: 'Programación web I', path: '/algo', icon: Icons.language),
  SoftwareItem(name: 'Analisis y diseño de software', path: '/algo', icon: Icons.security_update_good),
  SoftwareItem(name: 'Base de datos II', path: '/algo', icon: Icons.table_rows),
  SoftwareItem(name: 'Diseño UX', path: '/algo', icon: Icons.brush),
  SoftwareItem(name: 'Programación movil', path: '/algo', icon: Icons.android),
  SoftwareItem(name: 'Aplicaciones distribuidas', path: '/algo', icon: Icons.apps),
  SoftwareItem(name: 'Gestion de infraestructura TI', path: '/algo', icon: Icons.fact_check),
  SoftwareItem(name: 'Programación web II', path: '/algo', icon: Icons.public),
];


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
                onTap: () => context.push(e.path),
              )
            ),

            const  SizedBox(height: 50,)
        
          ],
        ),
      ),
    );
  }
}