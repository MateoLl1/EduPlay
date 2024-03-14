
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: IconButton(
        onPressed: () => context.pop(), 
        icon: const Icon(Icons.arrow_back)
      ),
    );
  }
}