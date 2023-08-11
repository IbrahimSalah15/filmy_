
import 'package:dio/dio.dart';
import 'package:filmy/movies/data/model/movies_model.dart';

import '../../../utils/app_constant.dart';
import '../../../utils/error/exceptions.dart';

import '../../../utils/network/error_message_model.dart';


abstract class BaseMovieRemoteDataSource{

  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async{
    final response = await Dio().get(AppConstant.nowPlayingMovie);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map(
              (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      return throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(AppConstant.popularMovie);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map(
              (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      return throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(AppConstant.topRatedMovie);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map(
              (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      return throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }

}
