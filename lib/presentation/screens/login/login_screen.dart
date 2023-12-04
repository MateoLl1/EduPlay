

import 'package:flutter/material.dart';
import 'package:games/presentation/screens/screens.dart';
import 'package:games/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomPaint(
        size: Size(size.width, size.height),
        painter: LoginPainter(),
        child: SizedBox(
          child: ListView(
            children: [


              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back,size: 40),
                  onPressed: (){
                    context.go('/');
                  }, 
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*.16),
                child: const _LoginFormView(),
              )


            ],
          ),
        ),
      ),
    );
  }
}

class _LoginFormView extends StatefulWidget {
  const _LoginFormView();

  @override
  State<_LoginFormView> createState() => _LoginFormViewState();
}
final _focusNode1 = FocusNode();
final _focusNode2 = FocusNode();
class _LoginFormViewState extends State<_LoginFormView> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final textStyle = Theme.of(context).textTheme;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const FlutterLogo(size: 100),
    
            Text('Iniciar Session',style: textStyle.titleLarge),
            const Divider(),

            CustomTextField(
              focusNode: _focusNode1,
              label: 'Correo electronico',
              icon: Icons.abc_outlined,
              hintTxt: 'ejemplo@gmail.com',
              onChanged: (value) {
                formKey.currentState!.validate();
              },
              validator: (value) {
                if (value!.trim().isEmpty) return 'Campo requerido';
                final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                );
                if (!emailRegExp.hasMatch(value.trim())) return 'Email invalido';

                return null;
              },
            ),

            const SizedBox(height: 10),
            
            CustomTextField(
              focusNode: _focusNode2,
              obscureText: true,
              label: 'Contraseña',
              icon: Icons.abc_outlined,
              onChanged: (value) {
                formKey.currentState!.validate();
              },
              validator: (value) {
                if (value!.trim().isEmpty) return 'Campo requerido';

                return null;
              },
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: CustomButton(
                label: 'Iniciar session',
                onPressed: () {
                  formKey.currentState!.validate();
                },
              ),
            ),

            const _LoginGoogle()

          ],
        )
      ),
    );
  }
}

class _LoginGoogle extends StatelessWidget {
  const _LoginGoogle();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        const Divider(),

        const Text('O inicia session con'),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: (){}, 
            ),
            IconButton(
              icon: const Icon(Icons.apple),
              onPressed: (){}, 
            ),
            IconButton(
              icon: const Icon(Icons.email),
              onPressed: (){}, 
            ),
          ],
        )
        


      ],
    );
  }
}