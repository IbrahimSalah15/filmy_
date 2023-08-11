
import 'package:dartz/dartz.dart';
import 'package:filmy/movies/domain/entities/movie.dart';

import '../../../utils/error/failure.dart';

abstract class BaseMoviesRepository{

  Future<Either<Failure , List<Movie> >> getNowPlayingMovies();
  Future<Either<Failure , List<Movie> >> getPopularMovies();
  Future<Either<Failure , List<Movie> >> getTopRatedMovies();


}