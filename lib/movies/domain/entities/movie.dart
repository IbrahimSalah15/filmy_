
class Movie {
  final int id;
  final String title;
  final String backdropPath;
  final List genreId;
  final String overView;
  final double votAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreId,
    required this.overView,
    required this.votAverage,
    required this.releaseDate,
  });

  List<Object> get props =>
      [id, title, backdropPath, genreId, overView, votAverage,releaseDate,];

  String? get backdropedpath => null;

}
