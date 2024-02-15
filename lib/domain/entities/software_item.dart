// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:games/domain/domain.dart';

class SoftwareItem {
  final int id;
  final String name;
  final String image;
  final IconData icon;
  List<SoftwareTema> temas;
  SoftwareItem({
    required this.id, 
    required this.name, 
    required this.image, 
    required this.icon,
    required this.temas,
    
  });
}