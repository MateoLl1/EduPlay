

import 'package:flutter/material.dart';

class TutorialApp extends StatelessWidget {
  const TutorialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const[

          Placeholder(),
          Placeholder(),
          Placeholder(),

        ],
      ),
    );
  }
}