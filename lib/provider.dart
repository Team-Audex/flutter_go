import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexBottomNavbarProvider = StateProvider<int>((ref) {
  return 0;
});

final usernameProvider = StateProvider<String>((ref) {
  return 'Ahmed';
});