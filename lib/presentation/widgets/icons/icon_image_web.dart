

import 'package:flutter/material.dart';

class IconImageWeb extends StatelessWidget {
  final String image;
  const IconImageWeb({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: 40,
      height: 40,
      fit: BoxFit.cover,
    );
  }
}