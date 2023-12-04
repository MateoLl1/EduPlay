import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/presentation/providers/providers.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
      ),
      body: const _SettingView(),
    );
  }
}

class _SettingView extends ConsumerStatefulWidget {
  const _SettingView();

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends ConsumerState<_SettingView> {

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final isDark = ref.watch(darkThemeProvider);
    var selectedColor = ref.watch(selectColorProvider); 

    return ListView(
      children: [
        SwitchListTile(
          title: Text('Modo oscuro', style: textStyle.titleMedium),
          value: isDark,
          onChanged: (value) {
            ref.read(darkThemeProvider.notifier).state = value;
          },
        ),

        ListTile(
          title: Text('Tema global',style: textStyle.titleMedium),
          subtitle: const Text('Cambiar paleta de colores'),
        ),

        RadioListTile(
          title: const Text('Azul'),
          value: 0,
          groupValue: selectedColor,
          onChanged: (value) {
            setState(() {
              selectedColor = value!;
              ref.read(selectColorProvider.notifier).update((state) => value);
            });
          },
        ),
        RadioListTile(
          title: const Text('Rojo'),
          value: 1,
          groupValue: selectedColor,
          onChanged: (value) {
            setState(() {
              selectedColor = value!;
              ref.read(selectColorProvider.notifier).update((state) => value);
            });
          },
        ),
        RadioListTile(
          title: const Text('Verde'),
          value: 2,
          groupValue: selectedColor,
          onChanged: (value) {
            setState(() {
              selectedColor = value!;
              ref.read(selectColorProvider.notifier).update((state) => value);
            });
          },
        ),
        RadioListTile(
          title: const Text('Amber'),
          value: 3,
          groupValue: selectedColor,
          onChanged: (value) {
            setState(() {
              selectedColor = value!;
              ref.read(selectColorProvider.notifier).update((state) => value);
            });
          },
        ),


      ],
    );
  }
}
