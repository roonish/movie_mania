import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';
import 'package:mymovies/repository/detailRepository.dart';
import 'package:mymovies/repository/repository.dart';
import 'package:mymovies/screen/builderpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            MoviesBloc(MovieRepository(), DetailRepository(), ""),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
            home: const BuilderPage()));
  }
}
