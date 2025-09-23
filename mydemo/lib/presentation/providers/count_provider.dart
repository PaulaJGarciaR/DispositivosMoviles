//import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final nombreProvider = Provider((ref)=>"Kevin");
final countProvider = StateProvider<int>((ref)=>0);
final darkThemeProvider = StateProvider<bool>((ref)=>false);