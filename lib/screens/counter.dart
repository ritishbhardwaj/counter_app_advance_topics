


import 'dart:developer';

import 'package:counter_app/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

                            //changing statelesswidget to this consumerwidget
class CounterScreen extends ConsumerWidget {
   CounterScreen({super.key});

    // int cnt =0;

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    //
    final counter = ref.watch(counterProvider);

    return 
    Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The Counter is $counter"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                      onPressed: () {
                  // increasingCnt();
                  ref.read(counterProvider.notifier).increment();

                       },
                      child: Icon(Icons.add),),
                      
                      ElevatedButton(
                      onPressed: () {
                  // decreasingCnt();
                  ref.read(counterProvider.notifier).decrement();


                       },
                      child: Icon(Icons.remove),),
              ],
            )
          ],
        ),
      ),
    );
  }

  // void increasingCnt(){
      
  //     cnt=cnt+1;      
  // }

  // void decreasingCnt(){
  //   cnt--;  
  // }
}