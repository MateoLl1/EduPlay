
import 'package:flutter/material.dart';


class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key, 
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(title,style: textStyle.titleMedium,)
    );
  }
}