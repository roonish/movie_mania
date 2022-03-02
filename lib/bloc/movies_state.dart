part of 'movies_bloc.dart';

@immutable
abstract class MoviesState {}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesReceived extends MoviesState {
  //this is list
  final List<Search> moviesDatas;

  MoviesReceived(this.moviesDatas);
}

class MoviesFailed extends MoviesState {
  final String messege;
  MoviesFailed(this.messege);
}

class MoviesDetailReceived extends MoviesState {
  final MovieDetail movieDetail;

  MoviesDetailReceived(this.movieDetail);
}
