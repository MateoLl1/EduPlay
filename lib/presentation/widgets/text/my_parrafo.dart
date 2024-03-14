

import 'package:flutter/material.dart';

class MyParrafo extends StatelessWidget {
  const MyParrafo({
    super.key, 
    required this.label
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(label,style: textStyle.bodyLarge,)
    );
  }
}
