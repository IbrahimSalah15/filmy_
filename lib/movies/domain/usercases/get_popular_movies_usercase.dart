import 'package:dartz/dartz.dart';
import 'package:filmy/movies/domain/repocitory/base_movies_repository.dart';

import '../../../utils/error/failure.dart';
import '../entities/movie.dart';

class GetPopularMoviesUserCase{

  final BaseMoviesRepository baseMoviesRepository ;
  GetPopularMoviesUserCase(this.baseMoviesRepository);

  Future<Either<Failure , List<Movie> >> execute() async{
    return await baseMoviesRepository.getPopularMovies();
  }

}