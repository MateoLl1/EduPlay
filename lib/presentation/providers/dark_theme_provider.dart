

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/config/theme/app_theme.dart';

final darkThemeProvider = StateProvider<bool>((ref) => false);


final colorThemeProvider = Provider<List<Color>>((ref) => colorsList);

final selectColorProvider = StateProvider<int>((ref) => 0);
