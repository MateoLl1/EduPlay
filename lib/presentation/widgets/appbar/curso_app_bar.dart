

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CursoAppBar extends StatelessWidget {
  final String title;
  const CursoAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      color: const Color(0xff0B60B0),
      alignment: const Alignment(-1, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back,color: Colors.white,)
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: textStyle.titleLarge?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}