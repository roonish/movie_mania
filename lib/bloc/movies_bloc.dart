import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mymovies/model/movie_detail.dart';
import 'package:mymovies/model/search.dart';
import 'package:mymovies/repository/detailRepository.dart';
import 'package:mymovies/repository/repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieRepository movieRepository;
  final wordSearched = TextEditingController();
  String query;
  final DetailRepository detailRepository;

  MoviesBloc(this.movieRepository, this.detailRepository, this.query)
      : super(MoviesInitial()) {
    on<MoviesEvent>((event, emit) async {
      if (event == MoviesEvent.buttonTap) {
        emit(MoviesLoading());
        try {
          final movieName = await movieRepository.moviesList(wordSearched.text);

          if (movieName.isEmpty) {
            emit(
              MoviesFailed('No movie found'),
              // emit(MoviesInitial()
            );
            Future.delayed(const Duration(seconds: 2), () {
              emit(MoviesInitial());
            });
          }
          emit(MoviesReceived(movieName));
          Future.delayed(const Duration(seconds: 2), () {
            emit(MoviesInitial());
          });
        } catch (e) {
          emit(MoviesFailed("No movie found"));
          Future.delayed(const Duration(seconds: 2), () {
            emit(MoviesInitial());
          });

          //throw Exception(e);
        }
      }

      if (event == MoviesEvent.dataClicked) {
        emit(MoviesLoading());
        try {
          final movieId = await detailRepository.movieDetails(
              //"tt0372784"
              query);
          emit(MoviesDetailReceived(movieId));
        } catch (e) {
          emit(MoviesFailed("No detail found"));
          Future.delayed(const Duration(seconds: 3), () {
            emit(MoviesInitial());
          });
        }
      }
    });
  }
}
