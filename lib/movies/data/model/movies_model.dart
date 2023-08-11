import '../../domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreId,
    required super.overView,
    required super.votAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic>json)=>
      MovieModel(
        id : json["id"],
        title:json["title"] ,
        backdropPath: json ["backdrop_path"],
        genreId: List<int>.from(json["genre_ids"]),
        overView:json["overview"],
        votAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
      );
}
