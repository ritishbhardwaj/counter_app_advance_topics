

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProvider extends StateNotifier<int>{       //statenotifier is one of the providers

  // step1

  CounterProvider() : super(0);    // creating constructor and initializing  the number as 0

  void increment() => state++;    //here state is my integer value
  void decrement() =>  state--;


}

//Step 2
//state provider ko notify bhi krna hai toh ye iske saath hoga

                                              //state class , uss class ki state
final counterProvider = StateNotifierProvider<CounterProvider,int> ((reff) => CounterProvider());