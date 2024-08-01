import 'package:riverpod/riverpod.dart';

final appIndex = StateProvider<int>((ref){
  return 0;
});