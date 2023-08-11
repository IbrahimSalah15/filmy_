import 'package:dartz/dartz.dart';
import 'package:filmy/movies/domain/repocitory/base_movies_repository.dart';

import '../../../utils/error/failure.dart';
import '../entities/movie.dart';

class GetTopRatedMoviesUserCase{

  final BaseMoviesRepository baseMoviesRepository ;
  GetTopRatedMoviesUserCase(this.baseMoviesRepository);

  Future<Either<Failure , List<Movie> >> execute() async{
    return await baseMoviesRepository.getTopRatedMovies();
  }

}