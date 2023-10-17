import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handilng_money_app/Screens/homePage.dart';
import 'package:handilng_money_app/bloc/itemCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => itemCubit(),),
      ],
      child: MaterialApp(

        home: homePage(),
      ),
    );
  }
}


