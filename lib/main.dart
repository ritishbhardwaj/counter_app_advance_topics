


import 'package:counter_app/screens/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){

  runApp(ProviderScope(
    child: CounterApp()
  )
  );
}



class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: CounterScreen(),
    );
  }
}