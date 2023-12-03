

import 'package:flutter/material.dart';
import 'package:games/presentation/widgets/widgets.dart';


class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

int selectedIndex = 0;
class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return NavigationDrawer(
      onDestinationSelected: (value) {
        selectedIndex = value;
        setState(() {
          
        });
      },
      selectedIndex: selectedIndex,
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20),
          child: Text('EducaPlay',style: textStyle.titleLarge,),
        ),
        

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Nunca pares de aprender',style: textStyle.bodyMedium,),
        ),

        const SizedBox(height: 10),

        const NavigationDrawerDestination(
          icon: Icon(Icons.account_circle), 
          label: Text('Mi perfil')
        ),

        const NavigationDrawerDestination(
          icon: Icon(Icons.settings), 
          label: Text('Configuracion')
        ),

        const NavigationDrawerDestination(
          icon: Icon(Icons.favorite), 
          label: Text('Cursos favoritos')
        ),

        const NavigationDrawerDestination(
          icon: Icon(Icons.verified), 
          label: Text('Cursos completados')
        ),

        Divider(color: colors.primary,endIndent: 30,indent: 30,),

        const SizedBox(height: 10),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Mas opciones'),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child:  CustomButton(
            label: 'Cerrar Session',
            onPressed: (){}
          ),
        )
      ]
    );
  }
}