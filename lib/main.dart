import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/cubits/get_wether_cubit.dart';
import 'package:newweather/views/details_view.dart';
import 'package:newweather/views/home_view.dart';
import 'package:newweather/views/splash_view.dart';
import 'views/search_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        initialRoute: 'SplashView',
        routes: {
          'SplashView': (context) => const SplashView(),
          'HomeView': (context) => const HomeView(),
          'SearchView': (context) => SearchView(),
          'DetailsView': (context) => const DetailsView(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
