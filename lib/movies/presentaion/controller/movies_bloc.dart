


// ignore_for_file: prefer_const_constructors

import 'package:filmy/movies/domain/usercases/get_nowplaying_movies_usercase.dart';
import 'package:filmy/movies/domain/usercases/get_popular_movies_usercase.dart';
import 'package:filmy/movies/domain/usercases/get_toprated_movies_usercase.dart';
import 'package:filmy/movies/presentaion/controller/movies_event.dart';
import 'package:filmy/movies/presentaion/controller/movies_state.dart';
import 'package:filmy/utils/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUserCase getNowPlayingMoviesUserCase;
  final GetPopularMoviesUserCase getPopularMoviesUserCase;
  final GetTopRatedMoviesUserCase getTopRatedMoviesUserCase;

  MoviesBloc(this.getNowPlayingMoviesUserCase, this.getPopularMoviesUserCase, this.getTopRatedMoviesUserCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {

      final result =
          await getNowPlayingMoviesUserCase.execute();
      result.fold(
        (l) => emit(
          state.copyWith(
            nowPlayingState: RequestState.error,
            nowPlayingMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            nowPlayingMovies: r,
            nowPlayingState: RequestState.loaded,
          ),
        ),
      );
    });
    on<GetPopularMoviesEvent>((event, emit) async {

      final result =
      await getPopularMoviesUserCase.execute();
      result.fold(
            (l) => emit(
              state.copyWith(
            popularState: RequestState.error,
            popularMessage: l.message,
          ),
        ),
            (r) => emit(
              state.copyWith(
            popularMovies: r,
            popularState: RequestState.loaded,
          ),
        ),
      );
    });
    on<GetTopRatedMoviesEvent>((event, emit) async {

      final result =
      await getTopRatedMoviesUserCase.execute();
      result.fold(
            (l) => emit(
              state.copyWith(
            topRatedState: RequestState.error,
            topRatedMessage: l.message,
          ),
        ),
            (r) => emit(
              state.copyWith(
            topRatedMovies: r,
            topRatedState: RequestState.loaded,
          ),
        ),
      );
    });
  }
}
