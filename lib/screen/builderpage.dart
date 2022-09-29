import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';
import 'package:mymovies/screen/detailpage.dart';
import 'package:mymovies/screen/errorpage.dart';
import 'package:mymovies/screen/history.dart';
import 'package:mymovies/screen/homepage.dart';
import 'package:mymovies/screen/listpage.dart';
import 'package:mymovies/screen/loadingWidget.dart';

class BuilderPage extends StatelessWidget {
  const BuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MoviesBloc, MoviesState>(
        listener: (context, state) {
          if (state is MoviesReceived) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ListPage(movieslist: state.moviesDatas)),
            );
          }
          if (state is MoviesDetailReceived) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(search: state.movieDetail)),
            );
          }
        },
        builder: (context, state) {
          if (state is MoviesInitial) {
            return const HomePage();
          }
          if (state is MoviesFailed) {
            return ErrorPage(
              text: state.messege,
            );
          }
          // if (state is MoviesDetailReceived) {
          //   return DetailPage(search: state.movieDetail);
          // }
          if (state is MoviesLoading) {
            return const Loadingpage();
          }
          // if (state is MovieHistory) {
          //   return const History();
          // }
          return const HomePage();
        },
      ),
    );
  }
}
