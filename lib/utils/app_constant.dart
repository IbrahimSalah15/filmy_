class AppConstant{
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apikey = "d1f3c37cab209229e2e2dd5ed8377994";

  static const String nowPlayingMovie = "https://api.themoviedb.org/3/movie/now_playing?api_key=d1f3c37cab209229e2e2dd5ed8377994";
  static const String popularMovie = "https://api.themoviedb.org/3/movie/popular?api_key=d1f3c37cab209229e2e2dd5ed8377994";
  static const String topRatedMovie = "https://api.themoviedb.org/3/movie/top_rated?api_key=d1f3c37cab209229e2e2dd5ed8377994";

  static const String baseImageUrl  = "https://image.tmdb.org/t/p/w500";

  static  String imageUrl( String path ) => "$baseImageUrl$path";

  static  String movieDetailsPath( int id ) {
    return "${AppConstant.baseUrl}/movie/$id?api_key=${AppConstant.apikey}";
  }


  static  String recommendation( int id ) {
    return "${AppConstant.baseUrl}/movie/$id/recommendations?api_key=${AppConstant.apikey}";
  }

}