import 'package:filmy/movies/data/data_source/movie_remot_data_source.dart';
import 'package:filmy/movies/data/repocitory/movies_repocitory.dart';
import 'package:filmy/movies/domain/repocitory/base_movies_repository.dart';
import 'package:filmy/movies/domain/usercases/get_nowplaying_movies_usercase.dart';
import 'package:filmy/movies/domain/usercases/get_popular_movies_usercase.dart';
import 'package:filmy/movies/domain/usercases/get_toprated_movies_usercase.dart';
import 'package:filmy/movies/presentaion/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init(){
    //Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() =>MovieRemoteDataSource());

  //  repository
    sl.registerLazySingleton<BaseMoviesRepository>(() =>MoviesRepository(baseMovieRemoteDataSource:sl()));

  //  Use case
    sl.registerLazySingleton<GetNowPlayingMoviesUserCase>(() =>GetNowPlayingMoviesUserCase(sl()));
    sl.registerLazySingleton<GetPopularMoviesUserCase>(() =>GetPopularMoviesUserCase(sl()));
    sl.registerLazySingleton<GetTopRatedMoviesUserCase>(() =>GetTopRatedMoviesUserCase(sl()));


    //  Bloc
    sl.registerFactory(() =>MoviesBloc(sl(), sl(), sl()));
  }
}