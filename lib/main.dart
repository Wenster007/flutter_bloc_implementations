import 'package:block_freezed_practice/authentication_practice/authentication/app.dart';
import 'package:block_freezed_practice/cubit_practice/counter_bloc/counter_practice_main.dart';
import 'package:block_freezed_practice/cubit_practice/cubit/cubit_practice_main.dart';
import 'package:block_freezed_practice/infinite_list_practice/inifinit_list_app.dart';
import 'package:block_freezed_practice/infinite_list_practice/posts/view/post_page.dart';
import 'package:block_freezed_practice/structure/injection.dart';
import 'package:block_freezed_practice/structure/structure_main.dart';
import 'package:block_freezed_practice/ticker_practice/app.dart';
import 'package:block_freezed_practice/ticker_practice/ticker_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_practice/cubit/simple_bloc_observer.dart';
import 'infinite_list_practice/infinite_list_observer.dart';


void main() async {
  // code of Structure ------------------
  // WidgetsFlutterBinding.ensureInitialized();
  // await configureDependencies();


  //code of cubit_practice_doc --------------
  // CubitPracticeMain();

  //code of bloc_practice_doc ---------------
  // CounterPracticeMain().run();

  //for observing the ticker_practice -------
  // Bloc.observer = const TickerObserver();

  //for observing the infinite_list_practice
  // Bloc.observer = const InfiniteListObserver();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return StructureMain();
    // return Placeholder();
    // return TickerApp();
    // return InfiniteListApp();
    return AuthenticationPracticeApp();
  }
}

